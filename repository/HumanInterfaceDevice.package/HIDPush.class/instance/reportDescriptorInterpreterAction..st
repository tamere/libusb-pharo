interpreter action
reportDescriptorInterpreterAction: anHIDReportDescriptorInterpreter
	"From the HID specification Section 5.4 about Main items:
	When a Push item is encountered, the item state table is copied and placed
	on a stack for later retrieval."
	anHIDReportDescriptorInterpreter
		pushItemStateTable