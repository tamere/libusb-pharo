instance creation
fromFile: aFileReference
	| stream |
	stream := aFileReference readStream.
	[ ^ self fromHexStringStream: stream ]
		ensure: [ stream close ]