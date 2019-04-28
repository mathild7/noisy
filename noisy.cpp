#include <hls_stream.h>

using namespace hls;

void noisy(
		stream<float> &out
) {
#pragma HLS INTERFACE axis register both port=out
#pragma HLS INTERFACE ap_ctrl_none port=return
	static unsigned state = 1;
	//x^16 + x^12 + x^3 + x^1 + 1
	static unsigned primpoly = 0b10001000000001011;

	for(int i = 0; i < 16; i++) {
		state <<= 1;
		if (state & (1<<16)) state ^= primpoly;
	}

	float f = (float(state) - float(1<<15))/float(1<<15);
	out << f;
}
