tests-generation
testGenerateReportStructuresFrom
	| reportStructures |
	reportStructures := hidReportDescriptorInterpreter
									generateReportStructuresFrom: self hidObjects.
	self assert: reportStructures size equals: 1.
	
	self assert: reportStructures first itemStateTables size equals: 1.
	self assert: reportStructures first bitSize equals: 8.
	
	reportStructures := hidReportDescriptorInterpreter
									generateReportStructuresFrom: self hidObjects2.
	self assert: reportStructures size equals: 2.