device hotplug event notification
registerDeviceLeftCallback: aLUHotplugCallback withFlags: flags vendorId: vendorId productId: productId deviceClass: deviceClass userDataHandle: userDataHandle
	^ self
		registerHotplugCallback: aLUHotplugCallback
		forEvent: LUHotplugEventEnumeration LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT value
		withFlags: flags
		vendorId: vendorId
		productId: productId
		deviceClass: deviceClass
		userDataHandle: userDataHandle