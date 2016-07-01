initialization-deinitialization
libusbExitContext: aLUContext
	"Warning, if you call this method with a LUContext that have already been exited,
	 it will crash the VM."
	^ self ffiCall: #(void libusb_exit (LUContext aLUContext))