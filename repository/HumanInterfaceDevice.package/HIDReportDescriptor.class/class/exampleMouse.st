examples
exampleMouse
"
USAGE_PAGE (Generic Desktop)
 USAGE (Mouse)
 COLLECTION (Application)
   USAGE (Pointer)
   COLLECTION (Physical)
     USAGE_PAGE (Button)
     USAGE_MINIMUM (Button 1)
     USAGE_MAXIMUM (Button 3)
     LOGICAL_MINIMUM (0)
     LOGICAL_MAXIMUM (1)
     REPORT_COUNT (3)
     REPORT_SIZE (1)
     INPUT (Data,Var,Abs)
     REPORT_COUNT (1)
     REPORT_SIZE (5)
     INPUT (Cnst,Var,Abs)
     USAGE_PAGE (Generic Desktop)
     USAGE (X)
     USAGE (Y)
     LOGICAL_MINIMUM (-127)
     LOGICAL_MAXIMUM (127)
     REPORT_SIZE (8)
     REPORT_COUNT (2)
     INPUT (Data,Var,Rel)
   END_COLLECTION
 END_COLLECTION
"
	^ HIDReportDescriptor new
	usagePageId: 1; "Generic Desktop"
	usageId: 2; "Mouse"
	collectionType: #Application with: [ :reportDesc |
		reportDesc
			usageId: 1; "Pointer"
			collectionType: #Physical with: [
				reportDesc
					usagePageId: 9; "Button"
					usageMinimum: 1;
					usageMaximum: 3;
					logicalMinimum: 0;
					logicalMaximum: 1;
					reportCount: 3;
					reportSize: 1;
					addInputConfiguredBy: [ :input |
						input
							beData;
							variable;
							absolute ];
					reportCount: 1;
					reportSize: 5;
					addInputConfiguredBy: [ :input |
						input
							constant;
							variable;
							absolute ];
					usagePageId: 1; "Generic Desktop"
					usageId: 16r30; "X"
					usageId: 26r31; "Y"
					logicalMinimum: -127;
					logicalMaximum: 127;
					reportSize: 8;
					reportCount: 2;
					addInputConfiguredBy: [ :input |
						input
							beData;
							variable;
							relative ] ] ];
	yourself