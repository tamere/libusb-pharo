accessing
hidInterfaces
	"Returns an array of interface number that have their bInterfaceClass value equals to LIBUSB_CLASS_HID."
	| interfaces |
	interfaces := OrderedCollection new.
	libusbDeviceHandle device activeConfigDescriptorDo: [ :configDesc |
		configDesc interfaces do: [ :interface |
			interface altsettings do: [ :altsetting |
				altsetting bInterfaceClass = LUClassCodeEnumeration LIBUSB_CLASS_HID value
					ifTrue: [ 
						interfaces add: altsetting bInterfaceNumber
					]
				]
			]
		].
	^ interfaces asArray