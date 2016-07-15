accessing
hidInterfaces
	"My subclasses must override this method to return an array of interface numbers that have their bInterfaceClass value equals to LIBUSB_CLASS_HID."
	^ self subclassResponsibility