baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'HumanInterfaceDevice';
				package: 'HumanInterfaceDevice-Tests' with: [ spec requires: 'HumanInterfaceDevice' ];
				package: 'HumanInterfaceDevice-GT' with: [ spec requires: 'HumanInterfaceDevice' ];
				package: 'HumanInterfaceDevice-Libusb' with: [ 
					spec
						requires: 'HumanInterfaceDevice';
						requires: 'LibUsb' ].
			spec baseline: 'LibUsb' with: [
    				spec repository: 'github://tamerescrl/libusb-pharo/repository' ] ]