polling and timing
handleEventsCompleted
	<libusbHighlevelFor: #libusbHandleEventsCompletedForContext:completed:>
	| completed result |
	completed := LUIntegerValueHolder new.
	result := self libusb
					libusbHandleEventsCompletedForContext: self completed: completed.
	
	"This is a hack, I don't know why on success, it returns an instance of integer and not an instance of LUErrorEnumeration..."
	(result = (result isInteger
					ifTrue: [ LUErrorEnumeration LIBUSB_SUCCESS value ]
					ifFalse: [ LUErrorEnumeration LIBUSB_SUCCESS ]))
		ifFalse: [ self libusbErrorCode: result ].
	
	^ completed value