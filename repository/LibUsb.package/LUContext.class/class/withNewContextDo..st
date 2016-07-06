doing
withNewContextDo: aBlock
    "This method creates a new LUContext and evaluate the block with it.
     It ensures that the context is freed correctly."
	| context |
	context := self new.
	[ aBlock value: context ]
		ensure: [ context exit ]