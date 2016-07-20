instance creation
fromByteStream: aByteStream
	^ HIDReportDescriptorParser parse: aByteStream