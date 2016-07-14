*HumanInterfaceDevice-GT
gtInspectorDataIn: composite
	<gtInspectorPresentationOrder: 3>  
	^ (composite list)
		title: 'Data';
		display: [ :aCollection | self data ];
		beMultiple;
		format: [ :each |
			'0x' , (each printStringBase: 16 length: 2 padded: true) ];
		showOnly: 50