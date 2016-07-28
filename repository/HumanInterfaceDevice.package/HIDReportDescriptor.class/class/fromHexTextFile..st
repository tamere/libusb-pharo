instance creation
fromHexTextFile: aFileReference
	| stream |
	stream := aFileReference readStream.
	[ ^ self fromHexStringStream: stream ]
		ensure: [ stream close ]