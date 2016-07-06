doing
bosDescriptorDo: aBlock
	| bosDescriptor |
	bosDescriptor := self bosDescriptor.
	[ aBlock value: bosDescriptor ]
		ensure: [ 
			self libusb
				libusbFreeBOSdescriptor: bosDescriptor ]