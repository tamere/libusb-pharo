doing
deviceWithVid: vendorId pid: productId do: aBlock
	
	self withNewContextDo: [ :context |
		| deviceHandle |
		deviceHandle := LUDeviceHandle openDeviceWithVid: vendorId pid: productId forContext: context.
		[
			aBlock value: context value: deviceHandle
		] ensure: [ deviceHandle close ] ]