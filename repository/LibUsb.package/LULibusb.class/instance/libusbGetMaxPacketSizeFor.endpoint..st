device handling/enumeration
libusbGetMaxPacketSizeFor: aLUDevice endpoint: endpoint
	^ self ffiCall: #(int libusb_get_max_packet_size(
								LUDevice * aLUDevice,
								uchar endpoint))