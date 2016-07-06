accessing - libusb
libusbErrorString
	<libusbHighlevelFor: #libusbStrerrorForCode:>
	^ self libusb
		libusbStrerrorForCode: self code