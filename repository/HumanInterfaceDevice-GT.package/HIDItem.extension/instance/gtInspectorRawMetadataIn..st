*HumanInterfaceDevice-GT
gtInspectorRawMetadataIn: composite
	<gtInspectorPresentationOrder: 1>  
	^ composite table
		title: 'Metadata(raw)';
		display: [ self metadata ];
		column: 'Metadata name' evaluated: [ :array| array first ];
		column: 'Decimal' evaluated: [ :array| array second ];
		column: 'Binary' evaluated: [ :assoc |
			assoc third ]