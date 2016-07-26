tests-generation
hidObjects
	"Returns a sample of hid objects for testing purpose"
	^ { 
	HIDUsagePage new id: 1; yourself.
	HIDUsage new id: 6; yourself.
	HIDCollection new typeOfCollection: #Application; yourself.
	HIDUsagePage new id: 7; yourself.
	HIDUsageMinimum new minimum: -32; yourself.
	HIDUsageMaximum new maximum: -25; yourself.
	HIDLogicalMinimum new minimum: 0; yourself.
	HIDLogicalMaximum new maximum: 1; yourself.
	HIDReportSize new size: 1; yourself.
	HIDReportCount new count: 8; yourself.
	HIDInput new
		beData;
		array;
		yourself.
	HIDEndCollection new
	 }