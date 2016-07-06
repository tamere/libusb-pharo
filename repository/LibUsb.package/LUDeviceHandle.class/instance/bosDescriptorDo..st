doing
bosDescriptorDo: aBlock
	| bosDescriptor |
	bosDescriptor := self bosDescriptor.
	[ aBlock value: bosDescriptor ]
		ensure: [ 
			bosDescriptor libusbFree ]