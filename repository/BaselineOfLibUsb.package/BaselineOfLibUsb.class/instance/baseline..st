baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'LibUsb';
				package: 'LibUsb-GT' with: [ spec requires: 'LibUsb' ] ]