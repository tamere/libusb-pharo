device handling/enumeration
libusbOpenDeviceForContext: aLUContext withVid: vendorId pid: productId
	^ self ffiCall: #(LUDeviceHandle * libusb_open_device_with_vid_pid(
								LUContext aLUContext,
								uint16 vendorId,
								uint16 productId))