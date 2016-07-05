*LibUsb-UFFI
signedByteAt: byteOffset
    "Return a 8bit signed integer starting at the given byte offset"
 	self flag: #HACK. "This method is added the time for UFFI to incorporate it."
	^self integerAt: byteOffset size: 1 signed: true