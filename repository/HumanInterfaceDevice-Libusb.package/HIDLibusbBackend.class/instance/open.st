open/close
open
	libusbDeviceHandle := LUDeviceHandle openDeviceWithVid: self vid pid: self pid forContext: libusbContext.
	self hidInterfaceForRequests: self hidInterfaces first