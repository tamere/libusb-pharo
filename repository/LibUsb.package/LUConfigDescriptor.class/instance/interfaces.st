accessing
interfaces
	"The field in the C struct is called 'interface' but it is an array.
	 This array of type void that you can access using #interface message should not be
	 used by end-user. Please use this method instead."
	^ FFIExternalArray
			fromHandle: self interface getHandle
			type: LUInterface
			size: self bNumInterfaces