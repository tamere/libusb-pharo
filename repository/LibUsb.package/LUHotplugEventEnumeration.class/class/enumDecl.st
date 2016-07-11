enum declaration
enumDecl
	^{
	"Yes, this is a macro in C but it is better to consider it as a member of the enumeration."
	#LIBUSB_HOTPLUG_MATCH_ANY -> -1.
	#LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED -> 16r01.
	#LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT -> 16r02.
	} asDictionary