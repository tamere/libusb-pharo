enum declaration
enumDecl
	^ { 
		(#LIBUSB_SPEED_UNKNOWN -> 0).
		(#LIBUSB_SPEED_LOW -> 1).
		(#LIBUSB_SPEED_FULL -> 2).
		(#LIBUSB_SPEED_HIGH -> 3).
		(#LIBUSB_SPEED_SUPER -> 4) 
	} asDictionary