as yet unclassified
szid
	| stream |
	stream := ReadStream on: self item data.
	^ [stream
		nextLittleEndianNumber: self item size]
			ensure: [ stream close ]