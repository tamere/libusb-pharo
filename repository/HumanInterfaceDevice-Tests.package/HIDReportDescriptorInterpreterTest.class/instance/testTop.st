tests-stack manipulation
testTop
	| testObject |
	self
		should: [ hidReportDescriptorInterpreter top ] raise: CollectionIsEmpty.
	testObject := Object new.
	hidReportDescriptorInterpreter push: testObject.
	self
		assert: hidReportDescriptorInterpreter top equals: testObject;
		assert: hidReportDescriptorInterpreter top equals: testObject.