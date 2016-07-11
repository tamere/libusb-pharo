accessing - libusb
interfaceNumber: anInteger altSetting: altsetting
	<libusbHighlevelFor: #libubSetInterfaceAltSettingFor:interfaceNumber:altSetting:>
	| result |
	result := self libusb
					libubSetInterfaceAltSettingFor: self interfaceNumber: anInteger altSetting: altsetting.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ]