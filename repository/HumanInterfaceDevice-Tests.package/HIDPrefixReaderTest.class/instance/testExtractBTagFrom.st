test - extraction
testExtractBTagFrom
	#(2r10100000 2r01010000 2r01011111) with: #(10 5 5) do: [ :prefix :expected |
		self
			assert: (self extractBTagFrom: prefix) equals: expected. ]