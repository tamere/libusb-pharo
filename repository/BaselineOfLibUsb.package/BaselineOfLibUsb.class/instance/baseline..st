baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'LibUsb' with: [ spec requires: 'UFFI-dev' ];
				package: 'LibUsb-GT' with: [ spec requires: 'LibUsb' ].
			spec
				project: 'UFFI-dev' with: [ "Switch back to stable when the changes have been merged."
					spec
						className: 'ConfigurationOfUnifiedFFI';
						version: #development;
						repository: 'http://smalltalkhub.com/mc/Pharo/FFI-NB/main'
					 ] ]