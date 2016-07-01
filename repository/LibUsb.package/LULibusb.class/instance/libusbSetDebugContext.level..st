initialization-deinitialization
libusbSetDebugContext: aLUContext level: anInteger
	^ self ffiCall: #(void libusb_set_debug (LUContext aLUContext, int anInteger))