tests-accessing
testSize
	self assert: hidShortItem size equals: 1.
	
	"Testing other possibilities since a conversion is made from #bSize to get #size."
	#[2r00000000 2r00000010 2r00000011] with: #[0 2 4] do: [ :prefix :realSize |
		|item|
		item := HIDShortItem rawData: {prefix} , (ByteArray new: realSize).
		self assert: item size equals: realSize ]