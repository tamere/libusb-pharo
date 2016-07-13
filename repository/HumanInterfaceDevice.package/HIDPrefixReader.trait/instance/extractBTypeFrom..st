extraction
extractBTypeFrom: aBytePrefix
	^ (aBytePrefix bitAnd: 2r00001100) >> 2