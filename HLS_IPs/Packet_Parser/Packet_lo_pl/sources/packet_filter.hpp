#ifndef DPI_H_
#define DPI_H_


#define noOfFilterTableEntries 8

const uint16_t REQUEST_DPI = 0x0FFF;
const uint16_t REPLY_DPI   = 0x0100;
const uint16_t INSERT_DPI  = 0x0001;
const uint16_t DELETE_DPI  = 0x0002;

//const ap_uint<32> replyTimeOut = 4000000000;

const ap_uint<48> MY_MAC_ADDR_DPI = 0xAB9078563412;  // LSB first
const ap_uint<48> BROADCAST_MAC_DPI = 0xFFFFFFFFFFFF; // Broadcast MAC Address
const uint32_t MY_IP_ADDR_DPI = 0x01010101;

struct filterTableEntry
{
   ap_uint<32> ipAddress;
   ap_uint<48> macAddress;
   ap_uint<16> Port;
   ap_uint<1> valid;
};

class cam_filter {
   public:
      filterTableEntry filterEntries[noOfFilterTableEntries];
      cam_filter();
      bool write(filterTableEntry writeEntry); // Returns true if write completed successfully, else false
      bool clear(ap_uint<32> clearAddress); // Returns true if read completed successfully, else false
      bool compare(ap_uint<32> searchAddress); // Compares the provided data with the contents of the filter and returns true if the entry should be blocked, false if not
};



void dpi(
      stream<axiWord> &parser2loopback,
      stream<axiWord> &loopback2merge
      );

#endif // LOOPBACK_H_ not defined

