device hotplug event notification
deregisterHotplugCallbackFromHandle: anInteger
	<libusbHighlevelFor: #libusbHotplugDeregisterCallbackForContext:handle:>
	self libusb
		libusbHotplugDeregisterCallbackForContext: self handle: anInteger