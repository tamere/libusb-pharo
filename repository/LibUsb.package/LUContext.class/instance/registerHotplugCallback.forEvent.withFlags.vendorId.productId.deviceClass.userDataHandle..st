device hotplug event notification
registerHotplugCallback: aLUHotplugCallback forEvent: events withFlags: flags vendorId: vendorId productId: productId deviceClass: deviceClass userDataHandle: userDataHandle
	<libusbHighlevelFor: #libusbHotplugRegisterCallbackForContext:events:flags:vendorId:productId:deviceClass:callback:userData:handle:>
	| result integerHandle |
	integerHandle := LUIntegerValueHolder new.
	result := self libusb
					libusbHotplugRegisterCallbackForContext: self
					events: events
					flags: flags
					vendorId: vendorId
					productId: productId
					deviceClass: deviceClass
					callback: aLUHotplugCallback
					userData: userDataHandle
					handle: integerHandle.
					
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ integerHandle value
		