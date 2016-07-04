accessing platform
unixModuleName
	#('/usr/lib32/libusb-1.0.so' 
	  '/usr/lib/i386-linux-gnu/libusb-1.0.so') 
	do: [ :path | path asFileReference exists ifTrue: [ ^path ]].
	
	self error: 'Cannot locate libusb library. Please check if it installed on your system (and that you''ve installed the 32bits version of the library'