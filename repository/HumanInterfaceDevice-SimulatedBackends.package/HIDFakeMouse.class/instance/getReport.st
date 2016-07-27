accessing
getReport
	^ ({ 
	(0 to: 3) atRandom.
	0 },
	(self bytesFromInteger: (-32767 to: 32767) atRandom withSize: 2),
	(self bytesFromInteger: (-32767 to: 32767) atRandom withSize: 2),
	(self bytesFromInteger: (-127 to: 127) atRandom withSize: 1),
	{ 0 }) asByteArray