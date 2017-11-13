parsing
parseStream: readStream
	| bytes |
	bytes := readStream next: self byteSize.
	^ self parse: bytes