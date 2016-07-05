*LibUsb-GT
gtInspectorInfoIn: composite
	<gtInspectorPresentationOrder: 1>
	^ (composite table)
			title: 'Info';
			display: [ self infoAssoc ];
			column: 'Key' evaluated: [ :item | item key ];
			column: 'Value' evaluated: [ :item | item value ]