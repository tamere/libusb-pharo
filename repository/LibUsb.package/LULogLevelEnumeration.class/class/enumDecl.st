enum declaration
enumDecl
	^ { 
		(#LIBUSB_LOG_LEVEL_NONE -> 0).
		(#LIBUSB_LOG_LEVEL_ERROR -> 1).
		(#LIBUSB_LOG_LEVEL_WARNING -> 2).
		(#LIBUSB_LOG_LEVEL_INFO -> 3). 
		(#LIBUSB_LOG_LEVEL_DEBUG -> 4)
	 } asDictionary