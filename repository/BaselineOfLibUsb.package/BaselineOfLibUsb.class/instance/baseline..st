baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'LibUsb' with: [ spec requires: 'UFFI-dev' ];
				package: 'LibUsb-GT' with: [ spec requires: 'LibUsb' ];
				package: 'LibUsb-UFFI'
					with: [ 
						spec
							requires: 'UFFI';
							requires: 'LibUsb' ].
			spec
				project: 'UFFI' with: [
					spec
						className: 'ConfigurationOfUnifiedFFI';
						version: #stable;
						repository: 'http://smalltalkhub.com/mc/Pharo/FFI-NB/main'
					 ] ]