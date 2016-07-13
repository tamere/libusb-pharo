tests-parsing
testParse
	| shortItem |
	self 
		should: [ HIDLongItemParser
						parse: (ReadStream on: #[5 1]) ]
		raise: HIDParsingFailed.

	shortItem := HIDLongItemParser parse: (ReadStream on: #[2r11110010 0 0]).
	self
		assert: shortItem class equals: HIDLongItem;
		assert: shortItem rawData equals: #[2r11110010 0 0]