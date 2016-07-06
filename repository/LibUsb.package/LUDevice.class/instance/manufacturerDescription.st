accessing - device handle
manufacturerDescription
	| description |
	self deviceHandleDo: [ :deviceHandle |
		[ description := deviceHandle manufacturerDescriptor ]
			on: LUError do: [ description := nil ] ].
	
	^ description ifNil: [ LUNoDescriptionAvailableError signal ]