accessing
isoUsageType
	^ LUIsoUsageTypeEnumeration fromInteger: ((self bmAttributes >> 4) bitAnd: 2r00000011)