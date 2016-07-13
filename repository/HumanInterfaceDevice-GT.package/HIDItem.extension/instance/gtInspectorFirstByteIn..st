*HumanInterfaceDevice-GT
gtInspectorFirstByteIn: composite
	<gtInspectorPresentationOrder: 2>  
	^ composite table
		title: 'First byte';
		display: [ 
			{
				'Decimal' -> self rawData first .
				'Hexadecimal' -> ('0x',(self rawData first printStringBase: 16 length: 2 padded: true)).
				('Binary' -> (self rawData first printStringBase: 2 length: 8 padded: true)) } ];
		column: 'Representation' evaluated: [ :assoc | assoc head ];
		column: 'Value' evaluated: [ :assoc | assoc tail ]