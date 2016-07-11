enum declaration
enumDecl
	^{
	#LIBUSB_HOTPLUG_NO_FLAGS -> 0.
	#LIBUSB_HOTPLUG_ENUMERATE -> (1<<0).
	} asDictionary