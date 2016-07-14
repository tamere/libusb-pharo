initialization
initializeIdToNameDict
	^ IdToNameDict :=  {
		16r01 -> #'Generic Desktop Controls'.
		16r02 -> #'Simulation Controls'.
		16r03 -> #'VR Controls'.
		16r04 -> #'Sport Controls'.
		16r05 -> #'Game Controls'.
		16r06 -> #'Generic Device Controls'.
		16r07 -> #'Keyboard/Keypad'.
		16r08 -> #'LEDs'.
		16r09 -> #'Button'.
		16r0A -> #'Ordinal'.
		16r0B -> #'Telephony'. 
		16r0C -> #'Consumer'.
		16r0D -> #'Digitizer'.
		16r0F -> #'PID Page'.
		16r10 -> #'Unicode'.
		16r14 -> #'Alphanumeric Display'.
		16r40 -> #'Medical Instruments'. 
		16r80 -> #'Monitor pages'.
		16r81 -> #'Monitor pages'.
		16r82 -> #'Monitor pages'.
		16r83 -> #'Monitor pages'.
		16r84 -> #'Power pages'.
		16r85 -> #'Power pages'.
		16r86 -> #'Power pages'.
		16r87 -> #'Power pages'.
		16r8C -> #'Bar Code Scanner page'.
		16r8D -> #'Scale page'.
		16r8E -> #'Magnetic Stripe Reading (MSR) Devices'.
		16r8F -> #'Reserved Point of Sale pages'.
		16r90 -> #'Camera Control Page'.
		16r91 -> #'Arcade Page'} asDictionary