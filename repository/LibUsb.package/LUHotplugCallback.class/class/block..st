instance creation
block: aBlock
	^ super
		signature: #(int (LUContext context,
								LUDevice *device,
								LUHotplugEventEnumeration event,
								void *userData))
		block: [ :contextHandle :deviceHandle :event :userData |
			aBlock valueWithArguments: { LUContext fromHandle: contextHandle.
													LUDevice fromHandle: deviceHandle.
													event.
													userData } ]