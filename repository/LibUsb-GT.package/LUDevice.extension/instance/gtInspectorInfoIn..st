*LibUsb-GT
gtInspectorInfoIn: composite
	<gtInspectorPresentationOrder: 1>
	^ (composite table)
			title: 'Info';
			display: [ { 
				'Address' -> self address.
				'Bus number' -> self busNumber.
				'Parent' -> self parent.
				'Port number' -> self portNumber.
				'Speed' -> self speed
			 } ];
			column: 'Key' evaluated: [ :item | item key ];
			column: 'Value' evaluated: [ :item | item value ]