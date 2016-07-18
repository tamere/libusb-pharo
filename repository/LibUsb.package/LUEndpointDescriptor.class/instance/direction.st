accessing
direction
	^ LUEndpointDirectionEnumeration fromInteger: (self bEndpointAddress bitAnd: 2r10000000)