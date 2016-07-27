accessing
availableDevices
	^ { HIDFakeMouse new
			vid: 16r1234;
			pid: 16r5678;
			yourself
	}