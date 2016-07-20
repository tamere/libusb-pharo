instance creation
fromHexStringStream: aStream
	| byteStream |
	byteStream := WriteStream on: ByteArray new.
	[ aStream atEnd ]
		whileFalse: [ 
			byteStream 
				<< (Integer readFrom: (aStream next: 2) base: 16) ].
	^ self fromByteArray: byteStream contents