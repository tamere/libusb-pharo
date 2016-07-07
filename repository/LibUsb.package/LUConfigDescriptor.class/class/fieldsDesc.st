field definition
fieldsDesc
	^ #(
	uint8 bLength;
	uint8 bDescriptorType;
	uint16 wTotalLength;
	uint8 bNumInterfaces;
	uint8 bConfigurationValue;
	uint8 iConfiguration;
	uint8 bmAttributes;
	uint8 MaxPower;
	void * interface;
	uchar * extra;
	int extra_length )