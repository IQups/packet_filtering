#include "globals.hpp"
#include "ip_handler.hpp"
#include "packet_filter.hpp"
void hlsDPI(stream<axiWord> &inData,
			stream<axiWord> &outData)
{
	#pragma HLS dataflow interval=1

	#pragma HLS INTERFACE port=inData axis
	#pragma HLS INTERFACE port=outData axis

    static stream<axiWord> parser2dpi("parser2dpi");

	#pragma HLS STREAM variable=parser2dpi 		depth=16


   parser(inData, parser2dpi);
   dpi(parser2dpi, outData);

}

