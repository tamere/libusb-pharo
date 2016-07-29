*HumanInterfaceDevice-GT
gtStateTableIn: composite
	<gtInspectorPresentationOrder: 0>
	composite list
		title: 'State table';
		display: [ self items ];
		sorted: [ :itemA :itemB | itemA className < itemB className ]