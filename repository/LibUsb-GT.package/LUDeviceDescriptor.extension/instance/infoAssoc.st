*LibUsb-GT
infoAssoc
	self flag: #todo. "Use enumerations value and finish method."
	^ { 
	'Descriptor type' -> (LUDescriptorTypeEnumeration itemAt: self bDescriptorType).
	'Device class' -> (LUClassCodeEnumeration itemAt: self bDeviceClass).
	'Device subclass' -> ('0x',(self bDeviceSubClass printStringBase: 16)).
	'USB version' -> self readableUsbVersion.
	'Device protocol' -> ('0x',(self bDeviceProtocol printStringBase: 16)).
	'Max packet size for endpoint 0' -> self bMaxPacketSize0.
	'Number of possible configurations' -> self bNumConfigurations.
	'Device release number (binary-coded decimal)' -> ('0x',(self bcdDevice printStringBase: 16)).
	'Vendor ID' -> ('0x',(self idVendor printStringBase: 16)).
	'Product ID' -> ('0x',(self idProduct printStringBase: 16)).
	 }