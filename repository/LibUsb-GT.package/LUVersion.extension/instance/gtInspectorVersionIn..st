*LibUsb-GT
gtInspectorVersionIn: composite
	<gtInspectorPresentationOrder: 1>
	^ (composite table)
			title: 'Version info';
			display: [ { 
				'Major' -> self major.
				'Minor' -> self minor.
				'Micro' -> self micro.
				'Nano' -> self nano.
				'Rc' -> self rc readString.
				'Describe' -> self describe readString
			 } ];
			column: 'Key' evaluated: [ :item | item key ];
			column: 'Value' evaluated: [ :item | item value ]