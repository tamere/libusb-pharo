test - extraction
testExtractRealSizeFrom
	#(0 1 2 3) with: #(0 1 2 4) do: [ :rawSize : realSize |
		self
			assert: (self extractRealSizeFrom: rawSize) equals: realSize ]