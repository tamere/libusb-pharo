hid report descriptor
fetchReportDescriptor
	"Fetch the report descriptor, parses it and returns it as an HIDReportDescriptor object.
	Also set #reportDescriptor inst. var."
	self reportDescriptor: (HIDReportDescriptorParser parse: (self getDescriptorWithType: HIDBackend LIBUSB_DT_REPORT index: 0) readStream).
	^ self reportDescriptor