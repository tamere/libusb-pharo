hid requests
getReportFromInterruptInPipeWithType: reportType id: reportId
	| data byteReceived bytes |
	data := self externalCharArrayOfSize: 256.
	byteReceived := libusbDeviceHandle
					interruptInputTransfer: data toEndpoint: self hidInterfaceForRequests withTimeout: self requestsTimeout.
	
	bytes := HIDReport new: byteReceived.
	1 to: byteReceived do: [ :i |
		bytes at: i put: (data at: i) ].
	^ bytes