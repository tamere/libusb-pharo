enum declaration
enumDecl
	^ {
		(#LIBUSB_BT_WIRELESS_USB_DEVICE_CAPABILITY -> 1).
		(#LIBUSB_BT_USB_2_0_EXTENSION -> 2).
		(#LIBUSB_BT_SS_USB_DEVICE_CAPABILITY -> 3).
		(#LIBUSB_BT_CONTAINER_ID -> 4)
	 } asDictionary