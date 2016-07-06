accessing - device handle
serialNumber
	| description |
	self deviceHandleDo: [ :deviceHandle |
		[ description := deviceHandle serialNumberDescriptor ]
			on: LUError do: [ description := nil ] ].
	
	^ description ifNil: [ LUNoDescriptionAvailableError signal ]