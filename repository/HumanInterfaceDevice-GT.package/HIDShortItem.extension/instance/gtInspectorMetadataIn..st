*HumanInterfaceDevice-GT
gtInspectorMetadataIn: composite
	<gtInspectorPresentationOrder: 0>  
	^ composite table
		title: 'Metadata';
		display: [ { 
			'Size' -> self size.
			'Type' -> self type.
			'Tag' -> self tag } ];
		column: 'Metadata name' evaluated: [ :array| array head ];
		column: 'Value' evaluated: [ :array| array tail ]