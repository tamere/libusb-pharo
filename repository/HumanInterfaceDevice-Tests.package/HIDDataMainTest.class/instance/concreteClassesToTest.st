accessing
concreteClassesToTest
	^ HIDDataMain allSubclasses select: [ :class |
		[class itemTagCode.
		 class itemTagDescription.
		 true] on: Error do: [ false ] ]