taking device control
releaseInterfaces
	libusbDeviceHandle device activeConfigDescriptorDo: [ :configDescriptor |
		configDescriptor interfaces do: [ :interface |
			interface altsettings do: [ :altsetting |
				libusbDeviceHandle releaseInterface: altsetting ] ] ]