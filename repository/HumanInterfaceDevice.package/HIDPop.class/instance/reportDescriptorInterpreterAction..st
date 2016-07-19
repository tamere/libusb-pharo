interpreter action
reportDescriptorInterpreterAction: anHIDReportDescriptorInterpreter
	"From the HID specification Section 5.4 about Main items:
	When a Pop item is found, the item state table is replaced with the top table
from the stack."
	anHIDReportDescriptorInterpreter
		popItemStateTable