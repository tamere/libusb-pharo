field definition
fieldsDesc
	self flag: #TODO. "dev_capability has to be read correctly in instance side method."
	^ #(
    uint8 bLength;
    uint8 bDescriptorType;
    uint16 wTotalLength;
    uint8 bNumDeviceCaps;
    void * dev_capability;)