interpreter action
reportDescriptorInterpreterAction: anHIDReportDescriptorInterpreter
	"From the HID specification Section 5.4 about Main items:
	When a Main item is found, a new report structure is allocated and initialized
	with the current item state table. All Local items are then removed from the
	item state table, but Global items remain. In this way, Global items set the
	default value for subsequent new Main items. A device with several similar
	controls—for example, six axes—would need to define the Global items only
	once prior to the first Main item."

	anHIDReportDescriptorInterpreter
		allocateNewItemStateTable;
		removeLocalItemsFromItemStateTable