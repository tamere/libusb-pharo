initialization-deinitialization
libusbInitContext: aLUContext
	^ self ffiCall: #(int libusb_init (LUContext *aLUContext))