polling and timing
libusbHandleEventCompletedForContext: aLUContext completed: aLUIntegerValueHolder
	^ self ffiCall: #(LUErrorEnumeration libusb_handle_events_completed(
								LUContext aLUContext,
								LUIntegerValueHolder * aLUIntegerValueHolder))