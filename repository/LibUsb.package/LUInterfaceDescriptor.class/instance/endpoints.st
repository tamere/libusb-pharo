accessing
endpoints
	"The field in the C struct is called 'endpoint' but it is an array.
	 This array of type void that you can access using #endpoint message should not be
	 used by end-user. Please use this method instead."
	^ FFIExternalArray
			fromHandle: self endpoint getHandle
			type: LUEndpointDescriptor
			size: self bNumEndpoints