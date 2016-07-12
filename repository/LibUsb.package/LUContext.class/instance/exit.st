exiting
exit
	<libusbHighlevelFor: #libusbExitContext:>
	self isNull ifTrue: [ ^ self ].
	self libusb
		libusbExitContext: self.
	handle := nil