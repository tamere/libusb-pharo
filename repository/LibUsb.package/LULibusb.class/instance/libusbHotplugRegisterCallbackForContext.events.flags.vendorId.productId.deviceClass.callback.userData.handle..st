device hotplug event notification
libusbHotplugRegisterCallbackForContext: aLUContext events: events flags: flags vendorId: vendorId productId: productId deviceClass: deviceClass callback: callback userData: userData handle: aLUIntegerValueHolder
	^ self ffiCall: #(LUErrorEnumeration libusb_hotplug_register_callback(
								LUContext aLUContext,
								LUHotplugEventEnumeration events,
								LUHotplugFlagEnumeration flags,
								int vendorId,
								int productId,
								int deviceClass,
								FFICallback callback,
								void * userData,
								LUIntegerValueHolder aLUIntegerValueHolder))