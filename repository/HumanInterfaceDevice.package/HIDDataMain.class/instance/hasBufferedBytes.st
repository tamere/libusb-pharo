testing
hasBufferedBytes
	^ self item data second
		allMask: 2r00000001