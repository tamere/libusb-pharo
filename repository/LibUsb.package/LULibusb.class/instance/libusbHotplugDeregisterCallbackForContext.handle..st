device hotplug event notification
libusbHotplugDeregisterCallbackForContext: aLUContext handle: aLUHotplugCallbackHandle
	^ self ffiCall: #(void libusb_hotplug_deregister_callback (
								LUContext aLUContext,
								libusb_hotplug_callback_handle aLUHotplugCallbackHandle))