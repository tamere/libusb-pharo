accessing - device handle
manufacturerDescription
	self deviceHandleDo: [ :deviceHandle |
			^ deviceHandle manufacturerDescriptor ]