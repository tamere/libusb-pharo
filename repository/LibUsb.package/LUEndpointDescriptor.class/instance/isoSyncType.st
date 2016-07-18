accessing
isoSyncType
	^ LUIsoSyncTypeEnumeration fromInteger: ((self bmAttributes >> 2) bitAnd: 2r00000011)