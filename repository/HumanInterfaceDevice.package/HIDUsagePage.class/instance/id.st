accessing
id
	| stream |
	stream := ReadStream on: self item data.
	^ [stream
		nextNumber: self item size]
			ensure: [ stream close ]