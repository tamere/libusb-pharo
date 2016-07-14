tests-accessing
testPageName
	| hidUsagePage |
	hidUsagePage := HIDUsagePage new
							item: (HIDShortItem rawData: #[5 1]);
							yourself.
	self assert: hidUsagePage pageName equals: (HIDUsagePage idToNameDict at: 1).
	"There is too much reserved ids so we just test the 100 firsts."
	HIDUsagePage reservedIds from: 1 to: 100 do: [ :id | |idByteArray|
		idByteArray := id asByteArray.
		hidUsagePage := HIDUsagePage new
							item: (HIDShortItem rawData: (2r00000100 bitOr: idByteArray size) asByteArray ,idByteArray);
							yourself.
							
		self assert: hidUsagePage pageName equals: #Reserved ].
	
	"There is too much vendor-defined ids so we just test the 100 firsts."
	HIDUsagePage vendorDefinedIds from: 1 to: 100 do: [ :id | |idByteArray|
		idByteArray := id asByteArray.
		hidUsagePage := HIDUsagePage new
							item: (HIDShortItem rawData: (2r00000100 bitOr: idByteArray size) asByteArray ,idByteArray);
							yourself.
							
		self assert: hidUsagePage pageName equals: #'Vendor-defined' ].