*HumanInterfaceDevice-GT
gtInspectorRawDataIn: composite
	<gtInspectorPresentationOrder: 4>  
	^ (composite list)
		title: 'Raw data';
		display: [ :aCollection | self rawData ];
		beMultiple;
		format: [ :each |
			'0x' , (each printStringBase: 16 length: 2 padded: true) ];
		showOnly: 50