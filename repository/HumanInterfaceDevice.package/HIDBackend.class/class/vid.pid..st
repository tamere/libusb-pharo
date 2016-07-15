instance creation
vid: aVendorId pid: aProductId
	^ HIDLibusbBackend new
			vid: aVendorId; 
			pid: aProductId;
			yourself