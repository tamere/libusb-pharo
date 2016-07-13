test - extraction
testExtractBTypeFrom
	#(2r00000100 2r00001100 2r11111111) with: #(1 3 3) do: [ :prefix :expected |
		self
			assert: (self extractBTypeFrom: prefix) equals: expected. ]