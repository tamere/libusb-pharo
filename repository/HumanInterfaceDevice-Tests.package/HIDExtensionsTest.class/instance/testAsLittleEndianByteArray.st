test - extensions
testAsLittleEndianByteArray
	self
		assert: 16rA0B70708 asLittleEndianByteArray
		equals: #[16r08 16r07 16rB7 16rA0]