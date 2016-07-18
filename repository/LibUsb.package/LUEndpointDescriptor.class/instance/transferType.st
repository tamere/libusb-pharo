accessing
transferType
	^ LUTransferTypeEnumeration fromInteger: (self bmAttributes bitAnd: 2r00000011)