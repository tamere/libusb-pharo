parsing actions
reportDescriptorParserActionOn: aReadStream
	| collected current |
	collected := OrderedCollection new.
	[ (current := aReadStream next) class = HIDEndCollection ]
		whileFalse: [ 
			collected add: (current reportDescriptorParserActionOn: aReadStream) ].
	
	^ (HIDCollectionArray newFrom: collected)
			hidCollection: self;
			yourself