device handling/enumeration
libusbSetInterfaceAltSettingFor: aLUDeviceHandle interfaceNumber: interfaceNumber altSetting: altSetting
	^ self ffiCall: #(LUErrorEnumeration libusb_set_interface_alt_setting (LUDeviceHandle *aLUDeviceHandle, int interfaceNumber, int altSetting))