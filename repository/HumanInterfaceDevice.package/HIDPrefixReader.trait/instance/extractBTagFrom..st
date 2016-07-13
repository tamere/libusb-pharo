extraction
extractBTagFrom: aBytePrefix
	^ (aBytePrefix bitAnd: 2r11110000) >> 4