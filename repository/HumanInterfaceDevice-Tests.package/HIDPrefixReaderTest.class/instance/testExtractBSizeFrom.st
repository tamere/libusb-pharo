test - extraction
testExtractBSizeFrom	
	#(2r00000011 2r00000000 2r11111100) with: #(3 0 0) do: [ :prefix :expected |
		self
			assert: (self extractBSizeFrom: prefix) equals: expected. ]