accessing structure variables
dev_capability
	"This method was automatically generated"
	self flag: #TODO. "dev_capability has to be modified to read a LUBOSDevCapabilityDescription array."
	^ExternalData fromHandle: (handle pointerAt: 9) type: ExternalType void asPointerType