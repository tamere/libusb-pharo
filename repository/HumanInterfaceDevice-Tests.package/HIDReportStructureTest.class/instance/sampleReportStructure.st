tests-parsing
sampleReportStructure
	^ (HIDReportDescriptor fromHexStringStream: '05010906A101050719E029E71500250175019508810295017508810195057501050819012905910295017503910195067508150026FF00050719002AFF008100C0' readStream) generateReportStructures first