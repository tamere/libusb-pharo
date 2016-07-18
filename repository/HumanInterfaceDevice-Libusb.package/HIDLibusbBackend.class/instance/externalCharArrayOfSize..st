external array
externalCharArrayOfSize: anInteger
	"Creates an external array of type uchar of size given as parameter."
	^ FFIExternalArray externalNewType: 'uchar' size: anInteger