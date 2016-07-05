referencing
unref
	"Does not return the return of the UFFI call since it returns the same device. See http://libusb.sourceforge.net/api-1.0/group__dev.html"
	self libusb
		libusbUnrefDevice: self