tests-setting
testBeOpen
	| hidDelimiter |
	hidDelimiter := HIDDelimiter new.
	hidDelimiter beOpen.
	
	self assert: hidDelimiter isOpen.