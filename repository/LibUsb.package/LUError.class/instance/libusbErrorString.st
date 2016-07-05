accessing - libusb
libusbErrorString
	^ self libusb
		libusbStrerrorForCode: self code