device handling/enumeration
libusbClaimInterfaceNumber: anInteger for: aLUDeviceHandle
	^ self ffiCall: #(LUErrorEnumeration libusb_claim_interface (
								LUDeviceHandle *aLUDeviceHandle,
								int anInteger))