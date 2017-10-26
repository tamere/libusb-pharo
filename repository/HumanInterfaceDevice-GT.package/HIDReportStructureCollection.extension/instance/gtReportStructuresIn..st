*HumanInterfaceDevice-GT
gtReportStructuresIn: composite
	<gtInspectorPresentationOrder: 0>
	composite tree
		title: 'Report structures';
		display: [ self reportStructures ];
		children: [ :each | each gtChildren ]