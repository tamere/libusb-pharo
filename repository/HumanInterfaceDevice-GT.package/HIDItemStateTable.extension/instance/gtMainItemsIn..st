*HumanInterfaceDevice-GT
gtMainItemsIn: composite
	<gtInspectorPresentationOrder: 1>
	composite list
		title: 'Main items';
		display: [ self mainItems ];
		sorted: [ :itemA :itemB | itemA className < itemB className ]