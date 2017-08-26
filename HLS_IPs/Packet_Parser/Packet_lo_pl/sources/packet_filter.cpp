#include "globals.hpp"
#include "packet_filter.hpp"
/*
Modify the loopback to a deep packet filter based on source
MAC:IP:PORT if detected then change the source MAC:IP:PORT
from filter list configured from PS
*/

cam_filter::cam_filter(){
   for (uint8_t i=0;i<noOfFilterTableEntries;++i) // Go through all the entries in the filter
      this->filterEntries[i].valid = 0;  // And mark them as invalid
}


bool cam_filter::write(filterTableEntry writeEntry)
{
   for (uint8_t i=0;i<noOfFilterTableEntries;++i) // Go through all the entries in the filter
   {
      if (this->filterEntries[i].valid == 0) // Check if the entry must be free
      {
         this->filterEntries[i].ipAddress = writeEntry.ipAddress;
         this->filterEntries[i].macAddress = writeEntry.macAddress;
         this->filterEntries[i].Port = writeEntry.Port;
         this->filterEntries[i].valid = 1; // If all these conditions are met then return true;
         return true;
      }
   }
   return false;
}


bool cam_filter::clear(ap_uint<32> clearAddress)
{
	// Go through all the entries in the filter
   for (uint8_t i=0;i<noOfFilterTableEntries;++i)
   {
	   // Check if the entry is valid and if the addresses match
      if (this->filterEntries[i].valid == 1 &&
    		              clearAddress == this->filterEntries[i].ipAddress)
      {
         this->filterEntries[i].valid = 0; // If so delete the entry (mark as invalid)
         return true;
      }
   }
   return false;
}

bool cam_filter::compare(ap_uint<32> searchAddress)
{
   for (uint8_t i=0;i<noOfFilterTableEntries;++i) // Go through all the entries in the filter
   {
	   // Check if the entry is valid and if the addresses match
      if (this->filterEntries[i].valid == 1 &&
    		             searchAddress == this->filterEntries[i].ipAddress)
         return true; // If all these conditions are met then return the entry;
   }
   return false;
}




void dpi(stream<axiWord> &inData,
	     stream<axiWord> &outData2merge)
{

#pragma HLS INLINE region
#pragma HLS pipeline II=1 enable_flush


   static enum myState {DPI_IDLE, DPI_PARSE, DPI_ENTRY, DPI_DELETE,
	   	   	   	   	    DPI_REPLY,  } dpiState;

   axiWord inputWord = {0, 0, 0, 0};
   axiWord currWord;
   axiWord sendWord = {0, 0xFF, 0 ,0};
   static ap_uint<32> replyCounter 	= 0;
   static uint16_t wordCount  = 0;
   static uint16_t sendCount  = 0;
   static bool     sendReply  = false;
   static bool     reading    = true;

   static cam_filter  filterTable;
   filterTableEntry queryResult;


#pragma HLS array_partition variable=filterTable.filterEntries complete


   static ap_uint<48>  MAC_DST;
   static ap_uint<48>  MAC_SRC;
   static ap_uint<16>  ethType;
   static ap_uint<4>   version;
   static ap_uint<4>   IHL;
   static ap_uint<6>   DSCP;
   static ap_uint<2>   ECN;
   static ap_uint<16>  totalLength;
   static ap_uint<16>  ident;
   static ap_uint<3>   flags;
   static ap_uint<13>  fragOffset;
   static ap_uint<8>   TTL;
   static ap_uint<8>   protocol;
   static ap_uint<16>  headerCRC;

   static ap_uint<32>  srcIP;
   static ap_uint<32>  dstIP;
   static ap_uint<16>  dpiCode;
   static ap_uint<32>  inputIP;
   static ap_uint<32>  newFilterIP;
   static ap_uint<48>  newFilterMAC;
   static ap_uint<16>  newFilterPort;
   static ap_uint<8>   registeredFilters = 0;


   static bool		   requestEnabled;




   switch(dpiState)
   {
      case DPI_IDLE:
         {
             //inputIP = 0;
            sendCount = 0;
 			requestEnabled = false;
             if (!inData.empty())
                dpiState = DPI_PARSE;
             else
             	dpiState = DPI_IDLE;

        	 break;
         }

      case DPI_PARSE:
         {
           if (!inData.empty()) {
              inData.read(currWord);
              switch(wordCount)
              {
                 case 0:    // word # 1
					          sendCount = 0; // Reset the set counter
								MAC_DST = currWord.data.range(47, 0);
				   MAC_SRC.range(15, 0) = currWord.data.range(63, 48);

				   break;
                 case 1:	//word # 2
								MAC_SRC.range(47 ,16) = currWord.data.range(31, 0);
								ethType = currWord.data.range(47, 32);  //16
								version = currWord.data.range(51, 48);  //4
									IHL = currWord.data.range(55, 52);  //4
								   DSCP = currWord.data.range(61, 56);  //6
									ECN = currWord.data.range(63, 62);  //2

                   break;
                 case 2:	//word # 3
    						 totalLength = currWord.data.range(15,0);  //16
								   ident = currWord.data.range(31,16); //16
								   flags = currWord.data.range(34,32); //3
							  fragOffset = currWord.data.range(47,35); //13
									 TTL = currWord.data.range(55,48); //8
								protocol = currWord.data.range(63,56); //8

                	 break;
                 case 3:	//word # 4
						    	 headerCRC = currWord.data.range(15,0);  //16
									 srcIP = currWord.data.range(47,16); //32
						 dstIP.range(15,0) = currWord.data.range(63,48); //16

					 break;
                 case 4:	//word # 5
                	 dstIP.range(31,16) = currWord.data.range(15,0);  //16
                	            dpiCode = currWord.data.range(31,16); //16
                   	        newFilterIP = currWord.data.range(63,32); //32

                	 break;

                 case 5:	//word # 6
                	       newFilterMAC = currWord.data.range(47,0);  //48
                	      newFilterPort = currWord.data.range(63,48); //16

                	 break;
                 default:
                    break;
              }
             if (currWord.last == 1)
              {
					if (dpiCode == REQUEST_DPI && dstIP == MY_IP_ADDR_DPI && requestEnabled == false)
						dpiState = DPI_REPLY;
					else if (dpiCode == INSERT_DPI && dstIP == MY_IP_ADDR_DPI)
						dpiState = DPI_ENTRY;
					else if (dpiCode == DELETE_DPI && dstIP == MY_IP_ADDR_DPI)
						dpiState = DPI_DELETE;
					else
						dpiState = DPI_IDLE;
                 wordCount = 0;
              }
              else
                 wordCount++;
           }
           break;

         }

      case DPI_ENTRY:
         {
        	 if (!filterTable.compare(newFilterIP))  //check for duplication
             {

                 filterTableEntry tempEntry = {newFilterIP ,newFilterMAC,newFilterPort, 1};
                 filterTable.write(tempEntry);  // ?? to be handle if filter is FULL
                 registeredFilters++;
              }
              dpiState = DPI_IDLE;

        	 break;
         }
      case DPI_DELETE:
         {
        	 if (filterTable.compare(newFilterIP))  //check for availability
             {
            	 ap_uint<32> tempIP = newFilterIP;
                 filterTable.clear(tempIP);  // ?? to be handle if not found
                 registeredFilters--;
              }
              dpiState = DPI_IDLE;

        	 break;
         }

      case DPI_REPLY:
          {
             switch(sendCount)
             {
                case 0:
                   sendWord.data.range(47, 0) = MAC_SRC;
                   sendWord.data.range(63, 48) = MY_MAC_ADDR_DPI.range(15, 0);
                   break;
                case 1:
                   sendWord.data.range(31, 0) = MY_MAC_ADDR_DPI.range(47, 16);
                   sendWord.data.range(47, 32) = ethType;
                   sendWord.data.range(51, 48) = version;
                   sendWord.data.range(55, 52) = IHL;
                   sendWord.data.range(61, 56) = DSCP;
                   sendWord.data.range(61, 56) = ECN;
                     break;
                case 2:
                   sendWord.data.range(15, 0)  = totalLength;
                   sendWord.data.range(31, 16) = ident;
                   sendWord.data.range(34, 32) = flags;
                   sendWord.data.range(37, 35) = fragOffset;
                   sendWord.data.range(55, 48) = TTL;
                   sendWord.data.range(63, 56) = protocol;
                    break;
                case 3:
                   sendWord.data.range(15,0)   = headerCRC;
                   sendWord.data.range(47, 16) = MY_IP_ADDR_DPI;
                   sendWord.data.range(63, 48) = srcIP.range(15,0);
                   break;
                case 4:
                   sendWord.data.range(15, 0)  = srcIP.range(31,16);
                   sendWord.data.range(31, 16) = REPLY_DPI;  //dpiCode
                   sendWord.data.range(39, 32) = registeredFilters;
                   sendWord.data.range(63,40)  = 0;
                   sendWord.strb = 0x06;
                   sendWord.last = 1;
                   dpiState = DPI_IDLE;
                   break;
             }
             outData2merge.write(sendWord);
             sendCount++;
             break;
          }


   }


}
