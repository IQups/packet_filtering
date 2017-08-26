#include "globals.hpp"
#include "ip_handler.hpp"
#include <ap_shift_reg.h>

using namespace hls;

void ethernetDetection(
      stream<axiWord> &inData,
      stream<axiWord> &parser2dpi
      )
{
#pragma HLS pipeline II=1 enable_flush

   static enum adState { IP4DETECT_IDLE = 0, IP4DETECT_CHECK,
      IP4DETECT_STREAM, IP4DETECT_RESIDUE} dpiDetectState;
   static ap_uint<16> dmp_macType;
   static axiWord dmp_prevWord;
   static bool dmp_wasLast = false;
   axiWord currWord = {0, 0, 0, 0};

   switch (dpiDetectState)
   {
      case IP4DETECT_IDLE:
         {
            if (!inData.empty()) {
               inData.read(currWord);
               dmp_prevWord = currWord;
               dpiDetectState = IP4DETECT_CHECK;
            }
            break;
         }
            case IP4DETECT_CHECK:
         {
           if (!inData.empty()) {
               inData.read(currWord);
               dmp_macType(7, 0) = currWord.data(47, 40);
               dmp_macType(15,8) = currWord.data(39, 32);
               if (dmp_macType == IPv4)
                  parser2dpi.write(dmp_prevWord);
               dmp_prevWord = currWord;
               dpiDetectState = IP4DETECT_STREAM;
            }
            break;
         }
            case IP4DETECT_STREAM:
         {
            if (!inData.empty()) {
               inData.read(currWord);
               if (dmp_macType == IPv4)
                  parser2dpi.write(dmp_prevWord);
               dmp_prevWord = currWord;
               if (currWord.last)
                  dpiDetectState = IP4DETECT_RESIDUE;
            }
            break;
         }
            case IP4DETECT_RESIDUE:
         {
            if (dmp_macType == IPv4)
               parser2dpi.write(dmp_prevWord);
            dpiDetectState = IP4DETECT_IDLE;
            break;
         }
   }
}


void parser(stream<axiWord> &inData,
			stream<axiWord> &parser2dpi) {
#pragma HLS INLINE

   ethernetDetection(inData, parser2dpi);
}

