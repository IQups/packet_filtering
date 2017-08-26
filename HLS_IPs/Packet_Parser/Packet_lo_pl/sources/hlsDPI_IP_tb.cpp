#include "globals.hpp"
#include <stdlib.h>

using namespace hls;
using namespace std;

int main(int argc, char *argv[])
{

	axiWord 				inData = {0, 0, 0, 0};
	axiWord 				outData;
	stream<axiWord> 		inDataFIFO("inDataFIFO");
	stream<axiWord> 		outDataFIFO("outDataFIFO");
	stream<ap_uint<32> > 	inQueryIP("inQueryIP");
	stream<ap_uint<48> > 	outReplyMAC("outReplyMAC");


	ifstream inputFile;
	ifstream queryFile;
	ifstream goldOutFile;
	ofstream outputFile;
	uint8_t	 correctReq	= 0;

	if (argc < 2) {

		cerr << "Error! You need provide the following parameters in the provided order: stimuli input file name, ARP reply file name, golden output file and output file name." << endl;
		return -1;
	}
    cerr << "Attempting to open files... " << endl;
	inputFile.open(argv[1]);
	if (!inputFile)	{
		cerr << " Error opening input file!" << endl;
		return -1;
    }
	outputFile.open(argv[2]);
	if (!outputFile) {
		cerr << " Error opening output file!" << endl;
		return -1;
	}
	cerr << "Input File: " << argv[1] << endl << "Output File: " << argv[2]  << endl << endl;

	uint16_t strbTemp;
	uint64_t dataTemp;
	uint16_t lastTemp;
	int count = 0;
    int errCount = 0;

	cerr << "Running DUT ";
	while (inputFile >> hex >> dataTemp >> strbTemp >> lastTemp) {
		inData.data = dataTemp;
		printf("In data   =  %lx \n",(uint64_t)inData.data);
		inData.strb = strbTemp;
		inData.last = lastTemp;
		inDataFIFO.write(inData);
		count++;
	}
	for (int i = 0; i < count + 30; i++) {
		hlsDPI(inDataFIFO, outDataFIFO);
		cerr << ".";
	}

	while (!(outDataFIFO.empty())) {
	  // Get the DUT result
	  outDataFIFO.read(outData);
	  // Get expected result
	  goldOutFile >> hex >> dataTemp >> strbTemp >> lastTemp;
	  // Compare results
	  if (outData.data != dataTemp || outData.strb != strbTemp ||
			outData.last != lastTemp) {
		 errCount++;
		 cerr << "X";
	  } else {
		 cerr << ".";
	  }
	  // Write DUT output to file
		outputFile << hex << noshowbase;
		outputFile << setfill('0');
		outputFile << setw(16) << outData.data << " " << setw(2) << outData.strb << " ";
		outputFile << setw(1) << outData.last << endl;
	}
   cerr << " done." << endl << endl;
    if (errCount == 0) {
    	cerr << "*** Test Passed ***" << endl << endl;
    	return 0;
    } else {
    	cerr << "!!! TEST FAILED -- " << errCount << " mismatches detected !!!";
    	cerr << endl << endl;
    	return -1;
    }
}

