initialization-deinitialization
libusbSetDebugContext: aLUContext level: enumValue
	^ self ffiCall: #(void libusb_set_debug (LUContext aLUContext, LULogLevelEnumeration enumValue))