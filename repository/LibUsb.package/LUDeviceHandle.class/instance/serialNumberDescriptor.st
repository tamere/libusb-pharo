accessing - libusb
serialNumberDescriptor
	^ self
		stringDescriptorAscciAt: self device descriptor iSerialNumber ofSize: 256