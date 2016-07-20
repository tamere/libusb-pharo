tests-stack manipulation
testPopPush
	| testObject |
	self
		should: [ hidReportDescriptorInterpreter pop ] raise: CollectionIsEmpty.
	testObject := Object new.
	hidReportDescriptorInterpreter push: testObject.
	self assert: hidReportDescriptorInterpreter pop equals: testObject.
	self
		should: [ hidReportDescriptorInterpreter pop ] raise: CollectionIsEmpty.