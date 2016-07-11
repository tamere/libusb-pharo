device handling/enumeration
libusbGetMaxIsoPacketSizeFor: aLUDevice endpoint: endpoint
	^ self ffiCall: #(int libusb_get_max_iso_packet_size(
								LUDevice * aLUDevice,
								uchar endpoint))