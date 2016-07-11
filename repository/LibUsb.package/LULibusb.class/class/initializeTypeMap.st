initialization
initializeTypeMap

	TypeMap := Dictionary newFromPairs: #(
		ssize_t int
		uint8_t int
		uint32_t int
		libusb_hotplug_callback_handle int
	)