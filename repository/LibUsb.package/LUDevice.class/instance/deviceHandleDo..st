doing - device handle
deviceHandleDo: aBlock
	"Perform an action with the LUDeviceHandle of this device.
	 This method ensure that the handle is freed after it has been used.
	 The block given as parameter takes one parameter that is the LUDeviceHandle.
	 !This method does not return the result of the block evaluation!"
	| deviceHandle |
	deviceHandle := self deviceHandle.
	[ aBlock value: deviceHandle ]
		ensure: [ self deviceHandle close ]