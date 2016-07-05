initialization-deinitialization
libusbInitContext: aLUContext
	^ self ffiCall: #(LUErrorEnumeration libusb_init (LUContext *aLUContext))