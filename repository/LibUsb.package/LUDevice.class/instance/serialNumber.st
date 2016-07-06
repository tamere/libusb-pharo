accessing - device handle
serialNumber
	self deviceHandleDo: [ :deviceHandle |
			^ deviceHandle serialNumberDescriptor ]