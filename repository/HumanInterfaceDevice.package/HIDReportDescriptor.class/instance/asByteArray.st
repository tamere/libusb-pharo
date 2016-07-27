converting
asByteArray
	| stream |
	stream := WriteStream on: ByteArray new.
	[ self writeBytesOn: stream ]
		ensure: [ stream close ].
	^ stream contents