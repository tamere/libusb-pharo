open/close
open
	fakeDevice := self class availableDevices detect: [ :device |
							device vid = self vid and: [ device pid = self pid ] ]