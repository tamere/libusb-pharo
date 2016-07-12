instance creation
block: aBlock
	"The block given as parameter must return  true or false.
	 If it returns true, the callback will be deregistered."
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