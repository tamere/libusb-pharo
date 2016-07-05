field definition
fieldsDesc
	^ #(
		uint8 bLength;
		uint8  bDescriptorType;
		uint16 bcdUSB;
		uint8  bDeviceClass;
		uint8  bDeviceSubClass;
		uint8  bDeviceProtocol;
		uint8  bMaxPacketSize0;
		uint16 idVendor;
		uint16 idProduct;
		uint16 bcdDevice;
		uint8  iManufacturer;
		uint8  iProduct;
		uint8  iSerialNumber;
		uint8  bNumConfigurations )