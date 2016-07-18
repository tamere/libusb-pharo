*HumanInterfaceDevice-GT
gtInspectorHIDObjectsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite tree
		title: 'HID objects tree';
		display: [ :root | self hidObjects ];
		children: #gtChildren;
		format: [ :each | String streamContents: [ :s | each shortPrintOn: s ] ]