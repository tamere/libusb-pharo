accessing
devCapabilities
	"The field in the C struct is called 'dev_capability' but it is an array.
	 This array of type void that you can access using #dev_capability message should not be
	 used by end-user. Please use this method instead."
	^ FFIExternalArray
			fromHandle: self dev_capability getHandle
			type: LUBOSDevCapabilityDescriptor
			size: self bNumDeviceCaps