doing
superSpeedEndpointCompanionDescriptorInContext: aLUContext do: aBlock
	"Perform an action with the LUSSEndpointCompanionDescriptor of this device.
	 This method ensure that the config descriptor is freed after it has been used.
	 The block given as parameter takes one parameter that is the LUSSEndpointCompanionDescriptor.
	 !This method does not return the result of the block evaluation!"
	| configDescriptor |
	configDescriptor := self superSpeedEndpointCompanionDescriptorInContext: aLUContext.
	[ aBlock value: configDescriptor ]
		ensure: [ 
			self libusb
				libusbFreeSSEndpointCompanionDescriptor: configDescriptor ]