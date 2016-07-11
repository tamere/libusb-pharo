device hotplug event notification
registerDeviceArrivedCallback: aLUHotplugCallback withFlags: flags vendorId: vendorId productId: productId deviceClass: deviceClass userDataHandle: userDataHandle
	^ self
		registerHotplugCallback: aLUHotplugCallback
		forEvent: LUHotplugEventEnumeration LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED value
		withFlags: flags
		vendorId: vendorId
		productId: productId
		deviceClass: deviceClass
		userDataHandle: userDataHandle