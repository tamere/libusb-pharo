accessing
id
	| stream |
	stream := ReadStream on: self item data.
	^ [stream
		nextLittleEndianNumber: self item size]
			ensure: [ stream close ]