*HumanInterfaceDevice
asLittleEndianByteArray
	| stream |
	stream := ByteArray new writeStream.
	1 to: self digitLength do: [:digitIndex |
		stream nextPut: (self digitAt: digitIndex)].
	^ stream contents