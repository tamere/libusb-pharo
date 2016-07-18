hid requests
getReportFromInterruptOutPipeWithType: reportType id: reportId
	| data byteReceived bytes |
	data := self externalCharArrayOfSize: 256.
	byteReceived := libusbDeviceHandle
					interruptOutputTransfer: data toEndpoint: self hidInterfaceForRequests withTimeout: self requestsTimeout.
	
	bytes := ByteArray new: byteReceived.
	1 to: byteReceived do: [ :i |
		bytes at: i put: (data at: i) ].
	^ bytes