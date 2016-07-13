tests-parsing
testParse
	| shortItem |
	self 
		should: [ HIDShortItemParser
						parse: (ReadStream on: #[2r11110010 0 0]) ]
		raise: HIDParsingFailed.

	shortItem := HIDShortItemParser parse: (ReadStream on: #[5 1]).
	self
		assert: shortItem class equals: HIDShortItem;
		assert: shortItem rawData equals: #[5 1]