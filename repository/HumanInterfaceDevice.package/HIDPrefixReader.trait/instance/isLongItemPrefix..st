testing
isLongItemPrefix: aBytePrefix
	^ (self extractBSizeFrom: aBytePrefix) = HIDLongItem expectedBSize
			and: [ (self extractBTagFrom: aBytePrefix) = HIDLongItem expectedBTag ]