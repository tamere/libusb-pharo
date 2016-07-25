examples
exampleFromHIDSpec
	"Example of report descriptor taken from the HIDSpec.
Usage Page (Generic Desktop),
Usage (Mouse),
Collection (Application),
	Usage (Pointer),
	Collection (Physical),
		Report ID (0A),
		Usage (X), Usage (Y),
		Logical Minimum (-127),
		Logical Maximum (127),
		Report Size (8), Report Count (2),
		Input (Data, Variable, Relative),
		Logical Minimum (0),
		Logical Maximum (1),
		Report Count (3), Report Size (1),
		Usage Page (Button Page),
		Usage Minimum (1),
		Usage Maximum (3),
		Input (Data, Variable, Absolute),
		Report Size (5),
		Input (Constant),
	End Collection,
End Collection
"
| reportDescriptor |
reportDescriptor := HIDReportDescriptor new.

^ reportDescriptor
	usagePageId: (HIDUsagePage idToNameDict keyAtValue: #'Generic Desktop Controls');
	usageId: (HIDUsage genericDesktopControlsUsageIds keyAtValue: #Mouse);
	collectionType: #Application with: [ 
		reportDescriptor
			usageId: (HIDUsage genericDesktopControlsUsageIds keyAtValue: #Pointer);
			collectionType: #Physical with: [ 
				reportDescriptor
					reportId: 16r0A;
					usageId: (HIDUsage genericDesktopControlsUsageIds keyAtValue: #X);
					usageId: (HIDUsage genericDesktopControlsUsageIds keyAtValue: #Y);
					logicalMinimum: -127;
					logicalMaximum: 127;
					reportSize: 8;
					reportCount: 2;
					addInputConfiguredBy: [ :input |
						input
							data;
							variable;
							relative ];
					logicalMinimum: 0;
					logicalMaximum: 1;
					reportCount: 3;
					reportSize: 1;
					usagePageId: (HIDUsagePage idToNameDict keyAtValue: #'Button');
					usageMinimum: 1;
					usageMaximum: 3;
					addInputConfiguredBy: [ :input |
						input
							data;
							variable;
							absolute ];
					reportSize: 5;
					addInputConfiguredBy: [ :input |
						input constant ] ] ];
	yourself