accessing
hidReportDescriptor
	^ HIDReportDescriptor new
			usagePageId: 1; "Generic Desktop Controls"
			usageId: 2; "Mouse"
			collectionType: #Application with: [ :reportDesc |
				reportDesc
					usageId: 1; "Pointer"
					collectionType: #Physical with: [ 
						reportDesc
							usagePageId: 9; "Button"
							usageMinimum: 1;
							usageMaximum: 16;
							logicalMinimum: 0;
							logicalMaximum: 1;
							reportCount: 16;
							reportSize: 1;
							addInputConfiguredBy: [ :input |
								input variable ];
							usagePageId: 1; "Generic Desktop Controls"
							logicalMinimum: -32767;
							logicalMaximum: 32767;
							reportSize: 16;
							reportCount: 2;
							usageId: 16r30; "X"
							usageId: 16r31; "Y"
							addInputConfiguredBy: [ :input |
								input
									variable;
									relative ];
							logicalMinimum: -127;
							logicalMaximum: 127;
							reportSize: 8;
							reportCount: 1;
							usageId: 16r38; "Wheel"
							addInputConfiguredBy: [ :input |
								input
									variable;
									relative ];
							usagePageId: 16rc; "Consumer"
							usageId: 16r238; "Reserved"
							reportCount: 1;
							addInputConfiguredBy: [ :input |
								input
									variable;
									relative ] ] ];
			yourself