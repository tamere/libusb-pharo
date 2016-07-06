field definition
fieldsDesc
	^ #(
	 uint8 bLength;
    uint8 bDescriptorType;
    uint8 bEndpointAddress;
    uint8 bmAttributes;
    uint16 wMaxPacketSize;
    uint8 bInterval;
    uint8 bRefresh;
    uint8 bSynchAddress;
    uchar * extra;
    int extra_length)