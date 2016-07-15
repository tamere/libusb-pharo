taking device control
claimInterfaces
	libusbDeviceHandle device activeConfigDescriptorDo: [ :configDescriptor |
		configDescriptor interfaces do: [ :interface |
			interface altsettings do: [ :altsetting |
				libusbDeviceHandle claimInterface: altsetting ] ] ]