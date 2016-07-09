accessing
altsettings
	"The field in the C struct is called 'altsetting' but it is an array.
	 This array of type void that you can access using #altsetting message should not be
	 used by end-user. Please use this method instead."
	^ FFIExternalArray
			fromHandle: self altsetting getHandle
			type: LUInterfaceDescriptor
			size: self num_altsetting