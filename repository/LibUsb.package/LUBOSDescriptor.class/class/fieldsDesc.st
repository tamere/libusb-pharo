field definition
fieldsDesc
	^ #(
    uint8 bLength;
    uint8 bDescriptorType;
    uint16 wTotalLength;
    uint8 bNumDeviceCaps;
    LUBOSDevCapabilityDescriptor ** dev_capability;)