accessing - device handle
productDescription
	| description |
	self deviceHandleDo: [ :deviceHandle |
		[ description := deviceHandle productDescriptor ]
			on: LUError do: [ description := nil ] ].
	
	^ description ifNil: [ LUNoDescriptionAvailableError signal ]