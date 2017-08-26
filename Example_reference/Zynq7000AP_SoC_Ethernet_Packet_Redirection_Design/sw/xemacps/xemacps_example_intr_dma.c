#define TESTAPP_GEN

/*****************************************************************************
*
* (c) Copyright 2010-2013 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
*****************************************************************************/
/****************************************************************************/
/**
*
* @file xemacps_example_intr_dma.c
*
* Implements examples that utilize the EmacPs's interrupt driven DMA
* packet transfer mode to send and receive frames.
*
* These examples demonstrate:
*
* - How to perform simple send and receive.
* - Interrupt
* - Error handling
* - Device reset
*
* Functional guide to example:
*
* - EmacPsDmaSingleFrameIntrExample demonstrates the simplest way to send and
*   receive frames in in interrupt driven DMA mode.
*
* - EmacPsErrorHandler() demonstrates how to manage asynchronous errors.
*
* - EmacPsResetDevice() demonstrates how to reset the driver/HW without
*   loosing all configuration settings.
*
* NOTE:
* Define PEEP in xemacps_example.h to run the example on a PEEP board.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a wsy  01/10/10 First release
* 1.00a asa  11/25/11 The cache disable routines are removed. So now both
*		      I-cache and D-cache are enabled. The array RxBuffer is
*		      removed to avoid an extra copy from RxBuffer to RxFrame.
*		      Now the address of RxFrame is submitted to the Rx BD
*		      instead of the address of RxBuffer.
*		      In function EmacPsDmaSingleFrameIntrExample, BdRxPtr
*		      is made as a pointer instead of array of pointers. This
*		      is done since on the Rx path we now submit a single BD
*		      instead of all 32 BDs. Because of this change, relevant
*		      changes are made throughout the function
*		      EmacPsDmaSingleFrameIntrExample.
*		      Cache invalidation is now being done for the RxFrame
*		      buffer.
*		      The unnecessary cache flush (Xil_DCacheFlushRange) is
*		      removed. This was being done towards the end of the
*		      example which was unnecessary.
* 1.00a asa 01/24/12  Support for Zynq board is added. The SLCR divisors are
* 		      different for Zynq. Changes are made for the same.
* 		      Presently the SLCR GEM clock divisors are hard-coded
*		      assuming that IO PLL output frequency is 1000 MHz.
* 		      The BDs are allocated at the address 0xFF00000 and the
* 		      1 MB address range starting from this address is made
* 		      uncached. This is because, for GEM the BDs need to be
* 		      placed in uncached memory. The RX BDs are allocated at
* 		      address 0xFF00000 and TX BDs are allocated at address
* 		      0xFF10000.
* 		      The MDIO divisor used of 224 is used for Zynq board.
* 1.01a asa 02/27/12  The hardcoded SLCR divisors for Zynq are removed. The
*		      divisors are obtained from xparameters.h.c. The sleep
*		      values are reduced for Zynq. One sleep is added after
*		      MDIO divisor is set. Some of the prints are removed.
* 1.01a asa 03/14/12  The SLCR divisor support for ENET1 is added.
* 1.01a asa 04/15/12  The funcation calls to Xil_DisableMMU and Xil_EnableMMU
*		      are removed for setting the translation table
*		      attributes for the BD memory region.
* 1.05a asa 09/22/13 Cache handling is changed to fix an issue (CR#663885).
*			  The cache invalidation of the Rx frame is now moved to
*			  XEmacPsRecvHandler so that invalidation happens after the
*			  received data is available in the memory. The variable
*			  TxFrameLength is now made global.
*
* </pre>
*
*****************************************************************************/

/***************************** Include Files ********************************/
#include "xemacps_example.h"
#include "xil_exception.h"
#include "xil_mmu.h"
#include "sleep.h"

/*************************** Constant Definitions ***************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define EMACPS_DEVICE_ID	XPAR_XEMACPS_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define EMACPS_IRPT_INTR	XPS_GEM0_INT_ID

#define RXBD_CNT       32	/* Number of RxBDs to use */
#define TXBD_CNT       32	/* Number of TxBDs to use */

/*
 * SLCR setting
 */
#define SLCR_LOCK_ADDR			(XPS_SYS_CTRL_BASEADDR + 0x4)
#define SLCR_UNLOCK_ADDR		(XPS_SYS_CTRL_BASEADDR + 0x8)
#define SLCR_GEM0_CLK_CTRL_ADDR		(XPS_SYS_CTRL_BASEADDR + 0x140)
#define SLCR_GEM1_CLK_CTRL_ADDR		(XPS_SYS_CTRL_BASEADDR + 0x144)
#define SLCR_PSS_RST_CTRL_ADDR		(XPS_SYS_CTRL_BASEADDR + 0x200)

#ifdef PEEP /* Define PEEP in xemacps_example.h if the example is run on PEEP */
#define SLCR_GEM_10M_CLK_CTRL_VALUE	0x00103031
#define SLCR_GEM_100M_CLK_CTRL_VALUE	0x00103001
#define SLCR_GEM_1G_CLK_CTRL_VALUE	0x00103011
#endif

#define SLCR_LOCK_KEY_VALUE		0x767B
#define SLCR_UNLOCK_KEY_VALUE		0xDF0D
#define SLCR_ADDR_GEM_RST_CTRL		(XPS_SYS_CTRL_BASEADDR + 0x214)
#define NBRXBd 16

/*************************** Variable Definitions ***************************/

EthernetFrame TxFrame;		/* Transmit buffer */
EthernetFrame TxFrameBis;		/* Transmit buffer 2 */
EthernetFrame RxFrame[NBRXBd];		/* Receive buffer */
XEmacPs_Bd *BdRxPtr;
XEmacPs_Bd *BdRxPtr1;
// for TX
XEmacPs_Bd *Bd1Ptr;
XEmacPs_Bd *Bd2Ptr;
XEmacPs_Bd *Bd3Ptr;
XEmacPs_Bd *BdTXPtr;
int RX_FIRST = 0;
int TX_FIRST = 0;
int Tx_Allocated = 0;
int Rx_Allocated = 0;
int k = 0;
int init_done = 0;
u32 NBTxIsr = 1;
/*
 * Buffer descriptors are allocated in uncached memory. The memory is made
 * uncached by setting the attributes appropriately in the MMU table.
 */
#define RX_BD_LIST_START_ADDRESS	0x0FF00000
#define TX_BD_LIST_START_ADDRESS	0x0FF10000

#define FIRST_FRAGMENT_SIZE 64

/*
 * Counters to be incremented by callbacks
 */
volatile unsigned int FramesRx=0;		/* Frames have been received */
volatile unsigned int FramesRxthreshold=0;		/* Frames have been received */
volatile unsigned int FramesTx=0;		/* Frames have been sent */
volatile int DeviceErrors;	/* Number of errors detected in the device */

u32 TxFrameLength;
u32 RxFrameLength;
int RXCNT = 0;


#ifndef TESTAPP_GEN
static XScuGic IntcInstance;
#endif

/*************************** Function Prototypes ****************************/

/*
 * Example
 */
int EmacPsDmaIntrExample(XScuGic *IntcInstancePtr,
			  XEmacPs *EmacPsInstancePtr,
			  u16 EmacPsDeviceId, u16 EmacPsIntrId);

int EmacPsDmaSingleFrameIntrExample(XEmacPs * EmacPsInstancePtr);

/*
 * Interrupt setup and Callbacks for examples
 */

static int EmacPsSetupIntrSystem(XScuGic * IntcInstancePtr,
				  XEmacPs * EmacPsInstancePtr,
				  u16 EmacPsIntrId);

static void EmacPsDisableIntrSystem(XScuGic * IntcInstancePtr,
				     u16 EmacPsIntrId);

static void XEmacPsSendHandler(void *Callback);
static void XEmacPsRecvHandler(void *Callback);
static void XEmacPsErrorHandler(void *Callback, u8 direction, u32 word);

/*
 * Utility routines
 */
static int EmacPsResetDevice(XEmacPs * EmacPsInstancePtr);

void XEmacPs_SetMdioDivisor(XEmacPs *InstancePtr, XEmacPs_MdcDiv Divisor);
int DMA_BuffersAllocationForTX(	XEmacPs * EmacPsInstancePtr, int NbBdToAllocate,int seq_init);
int DMA_BuffersDeallocationForTX(	XEmacPs * EmacPsInstancePtr);
int DMA_BuffersAllocationForRX(	XEmacPs * EmacPsInstancePtr, int NBBuffers, XEmacPs_Bd *BdPtr);
int DMA_BuffersDeallocationForRX(	XEmacPs * EmacPsInstancePtr, XEmacPs_Bd *BdPtr);

/****************************************************************************/
/**
*
* This is the main function for the EmacPs example. This function is not
* included if the example is generated from the TestAppGen test tool.
*
* @param	None.
*
* @return	XST_SUCCESS to indicate success, otherwise XST_FAILURE.
*
* @note		None.
*
****************************************************************************/
#ifndef TESTAPP_GEN
int main(void)
{
	int Status;

	xil_printf("Entering into main() \r\n");

	/*
	 * Call the EmacPs DMA interrupt example , specify the parameters
	 * generated in xparameters.h
	 */
	Status = EmacPsDmaIntrExample(&IntcInstance,
				       &EmacPsInstance,
				       EMACPS_DEVICE_ID,
				       EMACPS_IRPT_INTR);

	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Failure in examples");
		return XST_FAILURE;
	}

	xil_printf("Success in examples\r\n");
	return XST_SUCCESS;
}
#endif

/****************************************************************************/
/**
*
* This function demonstrates the usage of the EmacPs driver by sending by
* sending and receiving frames in interrupt driven DMA mode.
*
*
* @param	IntcInstancePtr is a pointer to the instance of the Intc driver.
* @param	EmacPsInstancePtr is a pointer to the instance of the EmacPs
*		driver.
* @param	EmacPsDeviceId is Device ID of the EmacPs Device , typically
*		XPAR_<EMACPS_instance>_DEVICE_ID value from xparameters.h.
* @param	EmacPsIntrId is the Interrupt ID and is typically
*		XPAR_<EMACPS_instance>_INTR value from xparameters.h.
*
* @return	XST_SUCCESS to indicate success, otherwise XST_FAILURE.
*
* @note		None.
*
*****************************************************************************/
int EmacPsDmaIntrExample(XScuGic * IntcInstancePtr,
			  XEmacPs * EmacPsInstancePtr,
			  u16 EmacPsDeviceId,
			  u16 EmacPsIntrId)
{
	int Status;
	XEmacPs_Config *Config;
	XEmacPs_Bd BdTemplate;

	/*
	temp = XEmacPs_ReadReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_NWCTRL_OFFSET);
	xil_printf("GEM CNTRL = %8x \r\n",temp);
	XEmacPs_WriteReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_NWCTRL_OFFSET,temp|XEMACPS_NWCTRL_STATWEN_MASK);

	temp = XEmacPs_ReadReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_NWCTRL_OFFSET);
	xil_printf("GEM CNTRL = %8x \r\n",temp);*/

	/*
	 *  Initialize instance. Should be configured for DMA
	 *  This example calls _CfgInitialize instead of _Initialize due to
	 *  retiring _Initialize. So in _CfgInitialize we use
	 *  XPAR_(IP)_BASEADDRESS to make sure it is not virtual address.
	 */
	Config = XEmacPs_LookupConfig(EmacPsDeviceId);

	Status = XEmacPs_CfgInitialize(EmacPsInstancePtr, Config,
					Config->BaseAddress);

	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error in initialize");
		return XST_FAILURE;
	}

	/*
	 * Set the MAC address
	 */
	Status = XEmacPs_SetMacAddress(EmacPsInstancePtr, EmacPsMAC, 1);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error setting MAC address");
		return XST_FAILURE;
	}

	/*
	 * Setup callbacks
	 */
	Status = XEmacPs_SetHandler(EmacPsInstancePtr,
				     XEMACPS_HANDLER_DMASEND,
				     (void *) XEmacPsSendHandler,
				     EmacPsInstancePtr);
	Status |=
		XEmacPs_SetHandler(EmacPsInstancePtr,
				    XEMACPS_HANDLER_DMARECV,
				    (void *) XEmacPsRecvHandler,
				    EmacPsInstancePtr);
	Status |=
		XEmacPs_SetHandler(EmacPsInstancePtr, XEMACPS_HANDLER_ERROR,
				    (void *) XEmacPsErrorHandler,
				    EmacPsInstancePtr);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error assigning handlers");
		return XST_FAILURE;
	}

	/*
	 * The BDs need to be allocated in uncached memory. Hence the 1 MB
	 * address range that starts at address 0xFF00000 is made uncached.
	 */
	Xil_SetTlbAttributes(0x0FF00000, 0xc02);
	/*
	 * Setup RxBD space.
	 *
	 * We have already defined a properly aligned area of memory to store
	 * RxBDs at the beginning of this source code file so just pass its
	 * address into the function. No MMU is being used so the physical
	 * and virtual addresses are the same.
	 *
	 * Setup a BD template for the Rx channel. This template will be
	 * copied to every RxBD. We will not have to explicitly set these
	 * again.
	 */
	XEmacPs_BdClear(&BdTemplate);

	/*
	 * Create the RxBD ring
	 */
	Status = XEmacPs_BdRingCreate(&(XEmacPs_GetRxRing
				       (EmacPsInstancePtr)),
				       RX_BD_LIST_START_ADDRESS,
				       RX_BD_LIST_START_ADDRESS,
				       XEMACPS_BD_ALIGNMENT,
				       RXBD_CNT);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap
			("Error setting up RxBD space, BdRingCreate");
		return XST_FAILURE;
	}

	Status = XEmacPs_BdRingClone(&(XEmacPs_GetRxRing(EmacPsInstancePtr)), &BdTemplate, XEMACPS_RECV);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap
			("Error setting up RxBD space, BdRingClone");
		return XST_FAILURE;
	}

	/*
	 * Setup TxBD space.
	 *
	 * Like RxBD space, we have already defined a properly aligned area
	 * of memory to use.
	 *
	 * Also like the RxBD space, we create a template. Notice we don't
	 * set the "last" attribute. The example will be overriding this
	 * attribute so it does no good to set it up here.
	 */
	XEmacPs_BdClear(&BdTemplate);
	XEmacPs_BdSetStatus(&BdTemplate, XEMACPS_TXBUF_USED_MASK);

	/*
	 * Create the TxBD ring
	 */
	Status = XEmacPs_BdRingCreate(&(XEmacPs_GetTxRing
				       (EmacPsInstancePtr)),
				       TX_BD_LIST_START_ADDRESS,
				       TX_BD_LIST_START_ADDRESS,
				       XEMACPS_BD_ALIGNMENT,
				       TXBD_CNT);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap
			("Error setting up TxBD space, BdRingCreate");
		return XST_FAILURE;
	}
	Status = XEmacPs_BdRingClone(&(XEmacPs_GetTxRing(EmacPsInstancePtr)),
				      &BdTemplate, XEMACPS_SEND);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap
			("Error setting up TxBD space, BdRingClone");
		return XST_FAILURE;
	}

	/*
	 * Set emacps to phy loopback
	 */

	/* For Zynq board */
	XEmacPs_SetMdioDivisor(EmacPsInstancePtr, MDC_DIV_224);
	sleep(1);


	XEmacPs_SetOperatingSpeed(EmacPsInstancePtr, EMACPS_LOOPBACK_SPEED);

	/*
	 * Setup the interrupt controller and enable interrupts
	 */
	Status = EmacPsSetupIntrSystem(IntcInstancePtr,
					EmacPsInstancePtr, EmacPsIntrId);


	/*
	 * Run the EmacPs DMA Single Frame Interrupt example
	 */
	Status = EmacPsDmaSingleFrameIntrExample(EmacPsInstancePtr);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	/*
	 * Disable the interrupts for the EmacPs device
	 */
	EmacPsDisableIntrSystem(IntcInstancePtr, EmacPsIntrId);

	/*
	 * Stop the device
	 */
	XEmacPs_Stop(EmacPsInstancePtr);

	return XST_SUCCESS;
}


/****************************************************************************/
/**
*
* This function demonstrates the usage of the EMACPS by sending and
* receiving a single frame in DMA interrupt mode.
* The source packet will be described by two descriptors. It will be
* received into a buffer described by a single descriptor.
*
* @param	EmacPsInstancePtr is a pointer to the instance of the EmacPs
*		driver.
*
* @return	XST_SUCCESS to indicate success, otherwise XST_FAILURE.
*
* @note		None.
*
*****************************************************************************/
int EmacPsDmaSingleFrameIntrExample(XEmacPs *EmacPsInstancePtr)
{
	int j;
	u32 PayloadSize = 1000;
	u32 NBTXBd = TXBD_CNT, NBTxFreePlaces=0;
	//u32 NumRxBuf = 0, NBRxFreePlaces=0;
	//XEmacPs_Bd *CurBd,*BdPtr;

	/*
	 * Clear variables shared with callbacks
	 */
	FramesRx = 0;
	FramesTx = 0;
	DeviceErrors = 0;
	RxFrameLength = 0;

	/*
	 * Calculate the frame length (not including FCS)
	 */
	RxFrameLength = XEMACPS_HDR_SIZE + PayloadSize;
	/*
	 * Setup packet to be transmitted
	 */

	EmacPsUtilFrameHdrFormatMAC(&TxFrame, EmacPsMAC_dest,0);
	EmacPsUtilFrameHdrFormatMAC(&TxFrameBis, EmacPsMAC_dest,1);
	//TxFrameLength = 1500;
	//memset(&TxFrame, 0, TxFrameLength);
	TxFrameLength = ARP__Fill_reply(&TxFrame);
	//TxFrameLength = 60;
	RXARP__Fill_reply(&TxFrameBis);

	Xil_DCacheFlushRange((u32)&TxFrame, XEMACPS_MAX_VLAN_FRAME_SIZE);
	Xil_DCacheFlushRange((u32)&TxFrameBis, XEMACPS_MAX_VLAN_FRAME_SIZE);

	/*
	 * Clear out receive packet memory area
	 */
	EmacPsUtilFrameMemClear(&RxFrame[0]);
	Xil_DCacheFlushRange((u32)&RxFrame[0], XEMACPS_MAX_VLAN_FRAME_SIZE);
	/*
	 * Allocate RxBDs since we do not know how many BDs will be used
	 * in advance, use RXBD_CNT here.
	 */

	//DMA_BuffersAllocationForRX(EmacPsInstancePtr, NBRXBd, BdRxPtr);
	Rx_Allocated = 1;



	DMA_BuffersAllocationForTX(EmacPsInstancePtr,NBTXBd,1);
	//DMA_BuffersAllocationForTX(EmacPsInstancePtr,NBTXBd,2);
	//DMA_BuffersAllocationForTX(EmacPsInstancePtr,NBTXBd,3);
	Tx_Allocated = 1;

 	/*
 	 * Start the device
 	 */
 	XEmacPs_Start(EmacPsInstancePtr);

 	/* Start transmit */
 	XEmacPs_Transmit(EmacPsInstancePtr);

 	init_done = 1;// to avoid the int_enable in allocationforTX the first time used before this line...
 	j=2;// pin pong variable to change data buffer to be sent out
 	while (1)
	{
		NBTxFreePlaces= XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr)));

		if(Tx_Allocated == 0 && NBTxFreePlaces > 0)
		{
			if(NBTxFreePlaces<NBTXBd)
			{
				xil_printf("Not enough places for allocation (asked=%2d available=%2d\r\n",NBTXBd,NBTxFreePlaces);
			}
			else
			{
				DMA_BuffersAllocationForTX(EmacPsInstancePtr,NBTXBd, j);
				if(j==2)// select different frame to be sent
					j=1;
				else
					j=2;
				Tx_Allocated = 1;
			}
		}

		if(Tx_Allocated == 1 && FramesTx > 0)
		{
			Tx_Allocated = 0;
			if(DMA_BuffersDeallocationForTX(EmacPsInstancePtr) == XST_SUCCESS)
			{
				FramesTx = 0;// RAZ polling variable of interrupt handler
			}
			else
			{
				print("Tx BD deallocation issue...\r\n");
			}
		}

#if 0
		NBRxFreePlaces= XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr)));

		if( (Rx_Allocated == 0) && (NBRxFreePlaces > 0) )
		{
			//xil_printf("RX allocation (Free=%2d)\r\n",XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr))));

			Rx_Allocated = 1;

			DMA_BuffersAllocationForRX(EmacPsInstancePtr, NBRXBd, BdRxPtr);
		}

		if(Rx_Allocated == 1 && FramesRx > 0)
		{
			//xil_printf("RX free\r\n");

			Rx_Allocated = 0;
			if(DMA_BuffersDeallocationForRX(EmacPsInstancePtr,Bd1Ptr) == XST_SUCCESS)
			{
				//print("RAZ COUNTER RX\r\n");
				FramesRx = 0;
			}

		}
#endif
		sleep(1);
	}

	return XST_SUCCESS;
}


/****************************************************************************/
/**
* This function resets the device but preserves the options set by the user.
*
* The descriptor list could be reinitialized with the same calls to
* XEmacPs_BdRingClone() as used in main(). Doing this is a matter of
* preference.
* In many cases, an OS may have resources tied up in the descriptors.
* Reinitializing in this case may bad for the OS since its resources may be
* permamently lost.
*
* @param	EmacPsInstancePtr is a pointer to the instance of the EmacPs
*		driver.
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
*****************************************************************************/
static int EmacPsResetDevice(XEmacPs * EmacPsInstancePtr)
{
	int Status = 0;
	u8 MacSave[6];
	u32 Options;
	XEmacPs_Bd BdTemplate;

	/*
	 * Stop device
	 */
	XEmacPs_Stop(EmacPsInstancePtr);

	/*
	 * Save the device state
	 */
	XEmacPs_GetMacAddress(EmacPsInstancePtr, &MacSave, 1);
	Options = XEmacPs_GetOptions(EmacPsInstancePtr);

	/*
	 * Stop and reset the device
	 */
	XEmacPs_Reset(EmacPsInstancePtr);

	/*
	 * Restore the state
	 */
	XEmacPs_SetMacAddress(EmacPsInstancePtr, &MacSave, 1);
	Status |= XEmacPs_SetOptions(EmacPsInstancePtr, Options);
	Status |= XEmacPs_ClearOptions(EmacPsInstancePtr, ~Options);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error restoring state after reset");
		return XST_FAILURE;
	}

	/*
	 * Setup callbacks
	 */
	Status = XEmacPs_SetHandler(EmacPsInstancePtr,
				     XEMACPS_HANDLER_DMASEND,
				     (void *) XEmacPsSendHandler,
				     EmacPsInstancePtr);
	Status |= XEmacPs_SetHandler(EmacPsInstancePtr,
				    XEMACPS_HANDLER_DMARECV,
				    (void *) XEmacPsRecvHandler,
				    EmacPsInstancePtr);
	Status |= XEmacPs_SetHandler(EmacPsInstancePtr, XEMACPS_HANDLER_ERROR,
				    (void *) XEmacPsErrorHandler,
				    EmacPsInstancePtr);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error assigning handlers");
		return XST_FAILURE;
	}

	/*
	 * Setup RxBD space.
	 *
	 * We have already defined a properly aligned area of memory to store
	 * RxBDs at the beginning of this source code file so just pass its
	 * address into the function. No MMU is being used so the physical and
	 * virtual addresses are the same.
	 *
	 * Setup a BD template for the Rx channel. This template will be copied
	 * to every RxBD. We will not have to explicitly set these again.
	 */
	XEmacPs_BdClear(&BdTemplate);

	/*
	 * Create the RxBD ring
	 */
	Status = XEmacPs_BdRingCreate(&(XEmacPs_GetRxRing
				      (EmacPsInstancePtr)),
				      RX_BD_LIST_START_ADDRESS,
				      RX_BD_LIST_START_ADDRESS,
				      XEMACPS_BD_ALIGNMENT,
				      RXBD_CNT);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap
			("Error setting up RxBD space, BdRingCreate");
		return XST_FAILURE;
	}

	Status = XEmacPs_BdRingClone(&
				      (XEmacPs_GetRxRing(EmacPsInstancePtr)),
				      &BdTemplate, XEMACPS_RECV);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap
			("Error setting up RxBD space, BdRingClone");
		return XST_FAILURE;
	}

	/*
	 * Setup TxBD space.
	 *
	 * Like RxBD space, we have already defined a properly aligned area of
	 * memory to use.
	 *
	 * Also like the RxBD space, we create a template. Notice we don't set
	 * the "last" attribute. The examples will be overriding this
	 * attribute so it does no good to set it up here.
	 */
	XEmacPs_BdClear(&BdTemplate);
	XEmacPs_BdSetStatus(&BdTemplate, XEMACPS_TXBUF_USED_MASK);

	/*
	 * Create the TxBD ring
	 */
	Status = XEmacPs_BdRingCreate(&(XEmacPs_GetTxRing
				      (EmacPsInstancePtr)),
				      TX_BD_LIST_START_ADDRESS,
				      TX_BD_LIST_START_ADDRESS,
				      XEMACPS_BD_ALIGNMENT,
				      TXBD_CNT);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap
			("Error setting up TxBD space, BdRingCreate");
		return XST_FAILURE;
	}
	Status = XEmacPs_BdRingClone(&
				      (XEmacPs_GetTxRing(EmacPsInstancePtr)),
				      &BdTemplate, XEMACPS_SEND);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap
			("Error setting up TxBD space, BdRingClone");
		return XST_FAILURE;
	}

	/*
	 * Restart the device
	 */
	XEmacPs_Start(EmacPsInstancePtr);

	return XST_SUCCESS;
}


/****************************************************************************/
/**
*
* This function setups the interrupt system so interrupts can occur for the
* EMACPS.
* @param	IntcInstancePtr is a pointer to the instance of the Intc driver.
* @param	EmacPsInstancePtr is a pointer to the instance of the EmacPs
*		driver.
* @param	EmacPsIntrId is the Interrupt ID and is typically
*		XPAR_<EMACPS_instance>_INTR value from xparameters.h.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
*****************************************************************************/
static int EmacPsSetupIntrSystem(XScuGic *IntcInstancePtr,
				  XEmacPs *EmacPsInstancePtr,
				  u16 EmacPsIntrId)
{
	int Status;

	/*
	 * Connect a device driver handler that will be called when an
	 * interrupt for the device occurs, the device driver handler performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(IntcInstancePtr, EmacPsIntrId,
			(Xil_InterruptHandler) XEmacPs_IntrHandler,
			(void *) EmacPsInstancePtr);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap
			("Unable to connect ISR to interrupt controller");
		return XST_FAILURE;
	}

	/*
	 * Enable interrupts from the hardware
	 */
	XScuGic_Enable(IntcInstancePtr, EmacPsIntrId);

	return XST_SUCCESS;
}


/****************************************************************************/
/**
*
* This function disables the interrupts that occur for EmacPs.
*
* @param	IntcInstancePtr is the pointer to the instance of the ScuGic
*		driver.
* @param	EmacPsIntrId is interrupt ID and is typically
*		XPAR_<EMACPS_instance>_INTR value from xparameters.h.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
static void EmacPsDisableIntrSystem(XScuGic * IntcInstancePtr,
				     u16 EmacPsIntrId)
{
	/*
	 * Disconnect and disable the interrupt for the EmacPs device
	 */
	XScuGic_Disconnect(IntcInstancePtr, EmacPsIntrId);

}

/****************************************************************************/
/**
*
* This the Transmit handler callback function and will increment a shared
* counter that can be shared by the main thread of operation.
*
* @param	Callback is the pointer to the instance of the EmacPs device.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
static void XEmacPsSendHandler(void *Callback)
{
	XEmacPs *EmacPsInstancePtr = (XEmacPs *) Callback;
	u32 RegISR;
	u32 RegSR;
	//u32 RegCtrl;

	// Disable the transmit related interrupts
	XEmacPs_IntDisable(EmacPsInstancePtr, (XEMACPS_IXR_TXCOMPL_MASK | XEMACPS_IXR_TX_ERR_MASK));

	RegISR = XEmacPs_ReadReg(EmacPsInstancePtr->Config.BaseAddress,XEMACPS_ISR_OFFSET);
	//xil_printf("TX Interrupt status Register %8x\r\n", RegISR);
	/* Clear the interrupt status register */
	XEmacPs_WriteReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_ISR_OFFSET, RegISR|XEMACPS_IXR_TXCOMPL_MASK);
	/* Transmit complete interrupt */
	/* Clear TX status register TX complete indication but preserve
	 * error bits if there is any */
#if 1
	RegSR = XEmacPs_ReadReg(EmacPsInstancePtr->Config.BaseAddress,XEMACPS_TXSR_OFFSET);
	//xil_printf("Clear TX status Register %8x\r\n",RegSR);
	XEmacPs_WriteReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_TXSR_OFFSET, RegSR | XEMACPS_TXSR_TXCOMPL_MASK|XEMACPS_TXSR_USEDREAD_MASK);
#endif
	FramesTx++;

	xil_printf("***%2d Frame sent *** %2d [free=%d]\r\n",NBTxIsr++,FramesTx, XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr))) );
}


/****************************************************************************/
/**
*
* This is the Receive handler callback function and will increment a shared
* counter that can be shared by the main thread of operation.
*
* @param	Callback is a pointer to the instance of the EmacPs device.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
static void XEmacPsRecvHandler(void *Callback)
{
	XEmacPs *EmacPsInstancePtr = (XEmacPs *) Callback;
	u32 reg;
	/*
	 * Disable the transmit related interrupts
	 */
		k++;
		xil_printf("### ISR %2d RxFrame received ### \r\n",k);
		XEmacPs_IntDisable(EmacPsInstancePtr, (XEMACPS_IXR_FRAMERX_MASK | XEMACPS_IXR_RX_ERR_MASK));
		if(0)
		{

			XEmacPs_IntDisable(EmacPsInstancePtr, (XEMACPS_IXR_FRAMERX_MASK | XEMACPS_IXR_RX_ERR_MASK));

			reg = XEmacPs_ReadReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_ISR_OFFSET);
			xil_printf("ISR Reg = %8x => %8x\r\n",reg, reg |XEMACPS_IXR_FRAMERX_MASK);
			XEmacPs_WriteReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_ISR_OFFSET,  reg |XEMACPS_IXR_FRAMERX_MASK);

			reg = XEmacPs_ReadReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_RXSR_OFFSET);
			xil_printf("TXSR Reg = %8x => %8x\r\n",reg, reg |XEMACPS_RXSR_FRAMERX_MASK);
			XEmacPs_WriteReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_RXSR_OFFSET, reg |XEMACPS_RXSR_FRAMERX_MASK);
			FramesRx++;
			k=0;
		}
}


/****************************************************************************/
/**
*
* This is the Error handler callback function and this function increments
* the error counter so that the main thread knows the number of errors.
*
* @param	Callback is the callback function for the driver. This
*		parameter is not used in this example.
* @param	Direction is passed in from the driver specifying which
*		direction error has occurred.
* @param	ErrorWord is the status register value passed in.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
static void XEmacPsErrorHandler(void *Callback, u8 Direction, u32 ErrorWord)
{
	XEmacPs *EmacPsInstancePtr = (XEmacPs *) Callback;

	/*
	 * Increment the counter so that main thread knows something
	 * happened. Reset the device and reallocate resources ...
	 */
	DeviceErrors++;

	switch (Direction) {
	case XEMACPS_RECV:
		if (ErrorWord & XEMACPS_RXSR_HRESPNOK_MASK) {
			EmacPsUtilErrorTrap("Receive DMA error");
		}
		if (ErrorWord & XEMACPS_RXSR_RXOVR_MASK) {
			EmacPsUtilErrorTrap("Receive over run");
		}
		if (ErrorWord & XEMACPS_RXSR_BUFFNA_MASK) {
			EmacPsUtilErrorTrap("Receive buffer not available");
		}
		break;
	case XEMACPS_SEND:
		if (ErrorWord & XEMACPS_TXSR_HRESPNOK_MASK) {
			EmacPsUtilErrorTrap("Transmit DMA error");
		}
		if (ErrorWord & XEMACPS_TXSR_URUN_MASK) {
			EmacPsUtilErrorTrap("Transmit under run");
		}
		if (ErrorWord & XEMACPS_TXSR_BUFEXH_MASK) {
			EmacPsUtilErrorTrap("Transmit buffer exhausted");
		}
		if (ErrorWord & XEMACPS_TXSR_RXOVR_MASK) {
			EmacPsUtilErrorTrap("Transmit retry excessed limits");
		}
		if (ErrorWord & XEMACPS_TXSR_FRAMERX_MASK) {
			EmacPsUtilErrorTrap("Transmit collision");
		}
		if (ErrorWord & XEMACPS_TXSR_USEDREAD_MASK) {
			EmacPsUtilErrorTrap("Transmit buffer not available");
		}
		break;
	}
	EmacPsResetDevice(EmacPsInstancePtr);
}


int DMA_BuffersAllocationForTX(	XEmacPs * EmacPsInstancePtr, int NbBdToAllocate, int seq_init)
{
	int Status,i;
	XEmacPs_Bd* CurBd,* TXBdPtr;


	print("**** TX ALLOCATION ****\t\t");
	xil_printf("%2d/%2d",XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr))),XEmacPs_BdRingGetCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr))));

	//TX frame to send
     Status = XEmacPs_BdRingAlloc(&(XEmacPs_GetTxRing(EmacPsInstancePtr)), NbBdToAllocate, &TXBdPtr);
 	if (Status != XST_SUCCESS)
 	{
 		EmacPsUtilErrorTrap("Error allocating TxBD");
 	}

     //***********************************************************************************************
     // TX frame 1
     //***********************************************************************************************
     CurBd = TXBdPtr;
     for (i=0; i<NbBdToAllocate; i++)
     {
    	 if(seq_init == 1)
    	 {
    		 XEmacPs_BdSetAddressTx(CurBd, (&TxFrame));	// Buffer address
    	 }
    	 else
    	 {
    		 XEmacPs_BdSetAddressTx(CurBd, (&TxFrameBis));	// Buffer address
    	 }
    	 XEmacPs_BdSetLength(CurBd, TxFrameLength);	// Frame length
    	 XEmacPs_BdClearTxUsed(CurBd);				// NOT USED
    	 XEmacPs_BdSetLast(CurBd);					// EOF

         // position to the next BD
    	 CurBd = XEmacPs_BdRingNext(&(XEmacPs_GetTxRing(EmacPsInstancePtr)), CurBd);
     }
     XEmacPs_BdSetTxWrap(CurBd);					// Last buffer descriptor

     // Give list to hardware
     Status = XEmacPs_BdRingToHw(&(XEmacPs_GetTxRing(EmacPsInstancePtr)), NbBdToAllocate, TXBdPtr);

     // transmit buffer descriptor list to the controller
     XEmacPs_WriteReg(EmacPsInstancePtr->Config.BaseAddress, XEMACPS_TXQBASE_OFFSET, EmacPsInstancePtr->TxBdRing.BaseBdAddr);

     if (Status != XST_SUCCESS)
     {
 		EmacPsUtilErrorTrap("Error committing TxBD to HW");
     }

 	 xil_printf(" => %2d/%2d\r\n",XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr))),XEmacPs_BdRingGetCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr))));

 	if(	init_done == 0)// done the first timme before while(1)
 	{

 	}
 	else
 	{
		// Activation des interruptions
 		XEmacPs_IntEnable(EmacPsInstancePtr, (XEMACPS_IXR_TXCOMPL_MASK | XEMACPS_IXR_TX_ERR_MASK));

		// Start transmit TX_GO
		XEmacPs_Transmit(EmacPsInstancePtr);
 	}

	return Status;
}


int DMA_BuffersDeallocationForTX(XEmacPs * EmacPsInstancePtr)
{
	int NBTxBDfromHW = 0;
	int Status,i;
	XEmacPs_Bd *CurBd,* TXBdPtr;
	u32 W1,W2;

	xil_printf("**** TX DEALLOCATION ****\t");
	xil_printf("%2d/%2d",XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr))),XEmacPs_BdRingGetCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr))));

	NBTxBDfromHW = XEmacPs_BdRingFromHwTx(&(XEmacPs_GetTxRing(EmacPsInstancePtr)), TXBD_CNT, &TXBdPtr);

	if (NBTxBDfromHW == 0)
	{
		EmacPsUtilErrorTrap("TxBDs were not ready for post processing");
		return XST_FAILURE;
	}
	//print("\r\n");
	CurBd = TXBdPtr;
    for (i=0; i<NBTxBDfromHW; i++)
    {
    	//XEmacPs_BdClearTxUsed(CurBd);
    	// read BD vales
    	W1=XEmacPs_BdRead(CurBd, XEMACPS_BD_ADDR_OFFSET);
    	W2=XEmacPs_BdRead(CurBd, XEMACPS_BD_STAT_OFFSET);
    	//Erase BD values
    	XEmacPs_BdWrite(CurBd, XEMACPS_BD_ADDR_OFFSET, (W1&0x00000000));
    	XEmacPs_BdWrite(CurBd, XEMACPS_BD_STAT_OFFSET, (W2&0xC0000000));
    	// read BD vales
    	//W1=XEmacPs_BdRead(CurBd, XEMACPS_BD_ADDR_OFFSET);
    	//W2=XEmacPs_BdRead(CurBd, XEMACPS_BD_STAT_OFFSET);
    	//xil_printf("W1=%8x W2=%8x\r\n",W1,W2);

        // position to the next BD
    	CurBd = XEmacPs_BdRingNext(&(XEmacPs_GetTxRing(EmacPsInstancePtr)), CurBd);
    }

	Status = XEmacPs_BdRingFree(&(XEmacPs_GetTxRing(EmacPsInstancePtr)),NBTxBDfromHW , TXBdPtr);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Error freeing up %d TxBD1 ",NBTxBDfromHW);
		return XST_FAILURE;
	}
	xil_printf(" => %2d/%2d\r\n",XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr))),XEmacPs_BdRingGetCnt(&(XEmacPs_GetTxRing(EmacPsInstancePtr))));
	return(XST_SUCCESS);
}

int DMA_BuffersAllocationForRX(	XEmacPs * EmacPsInstancePtr, int NBBuffers, XEmacPs_Bd *BdPtr)
{
	int Status,i;
	XEmacPs_Bd* CurBd,* RXBdPtr;

	if(RX_FIRST == 0)
	{
		xil_printf("#### RX ALLOCATION ####\t");
		//RX_FIRST = 1;
	}
	else
	{
		// Activation des interruptions
		XEmacPs_IntEnable(EmacPsInstancePtr, (XEMACPS_IXR_FRAMERX_MASK | XEMACPS_IXR_RX_ERR_MASK));
		xil_printf("#### RX ALLOCATION asked %2d####\t",NBBuffers);
	}

	xil_printf("\t%2d/%2d ",XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr))),XEmacPs_BdRingGetCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr))));


	Status = XEmacPs_BdRingAlloc(&(XEmacPs_GetRxRing(EmacPsInstancePtr)), NBBuffers, &RXBdPtr);
	if (Status != XST_SUCCESS)
	{
		EmacPsUtilErrorTrap("Error allocating RxBD");
		return XST_FAILURE;
	}

	 CurBd = RXBdPtr;
	 for (i=0; i<NBBuffers; i++)
	 {
		 XEmacPs_BdSetAddressRx(CurBd, (&RxFrame[i]));
		 XEmacPs_BdClearRxNew(CurBd);	// Clear the bit to allow controller to write data
		 // position to the next BD
		 CurBd = XEmacPs_BdRingNext(&(XEmacPs_GetRxRing(EmacPsInstancePtr)), CurBd);
	 }
	 XEmacPs_BdSetRxWrap(CurBd);	// End of BD list

	Status = XEmacPs_BdRingToHw(&(XEmacPs_GetRxRing(EmacPsInstancePtr)), NBBuffers, RXBdPtr);
	if (Status != XST_SUCCESS)
	{
		EmacPsUtilErrorTrap("Error committing RxBD to HW");
		return XST_FAILURE;
	}
	xil_printf(" => %2d/%2d \r\n",XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr))),XEmacPs_BdRingGetCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr))));
	if(RX_FIRST == 1)
	{
		// Start the device
		XEmacPs_Start(EmacPsInstancePtr);

		// Start transmit
		XEmacPs_Transmit(EmacPsInstancePtr);
	}
	RX_FIRST = 1;
	return XST_SUCCESS;
}
int DMA_BuffersDeallocationForRX(	XEmacPs * EmacPsInstancePtr, XEmacPs_Bd *BdPtr)
{
	int NBRxBDfromHW = 0;
	int Status,i,j,NB;
	XEmacPs_Bd* CurBd,* RXBdPtr;

	unsigned char *BufPointer;

	xil_printf("#### RX DEALLOCATION ####\t %2d/%2d",XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr))),XEmacPs_BdRingGetCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr))));
	NBRxBDfromHW = XEmacPs_BdRingFromHwRx(&(XEmacPs_GetRxRing(EmacPsInstancePtr)), RXBD_CNT, &RXBdPtr);
	xil_printf("\tNB to free = %d \r\n",NBRxBDfromHW);

	if (NBRxBDfromHW == 0)
	{
		//EmacPsUtilErrorTrap("TxBDs were not ready for post processing");
		return XST_FAILURE;
	}
	else
	{
		//xil_printf("%d TxBDfromHW to free\r\n",NBTxBDfromHW);
		CurBd = RXBdPtr;
		for (i=0; i<NBRxBDfromHW; i++)
		{
			XEmacPs_BdClearRxNew(CurBd);
#if 1
			// Affichage
			BufPointer = (unsigned char*) XEmacPs_BdGetBufAddr(CurBd);
			NB = XEmacPs_BdGetLength(CurBd);
			xil_printf("RX FRAME %2d [%8x](size=%2d) SOF=%1d EOF=%1d= IsWRAP=%2d ",RXCNT++ , BufPointer, NB, XEmacPs_BdIsRxSOF(CurBd), XEmacPs_BdIsRxEOF(CurBd),XEmacPs_BdIsRxWrap(CurBd) );
			for(j=0;j<NB; j++)
			{
				xil_printf("%2x ",*BufPointer++);
			}
			//xil_printf("\r\n Status %8x\r\n", XEmacPs_BdGetStatus(CurBd));
			xil_printf("\r\n");
#endif

			// position to the next BD
			CurBd = XEmacPs_BdRingNext(&(XEmacPs_GetRxRing(EmacPsInstancePtr)), CurBd);
		}

		Status = XEmacPs_BdRingFree(&(XEmacPs_GetRxRing(EmacPsInstancePtr)),NBRxBDfromHW , RXBdPtr);
		if (Status != XST_SUCCESS) {
			xil_printf("Error freeing up %d TxBD1 ",NBRxBDfromHW);
			return XST_FAILURE;
		}
		//xil_printf("%2d/%2d\r\n ",XEmacPs_BdRingGetFreeCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr))),XEmacPs_BdRingGetCnt(&(XEmacPs_GetRxRing(EmacPsInstancePtr))));
	}

	return(XST_SUCCESS);
}
