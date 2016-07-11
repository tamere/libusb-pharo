accessing - libusb
interfaceNumber: anInteger altSetting: altsetting
	<libusbHighlevelFor: #libusbSetInterfaceAltSettingFor:interfaceNumber:altSetting:>
	| result |
	result := self libusb
					libusbSetInterfaceAltSettingFor: self interfaceNumber: anInteger altSetting: altsetting.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ]