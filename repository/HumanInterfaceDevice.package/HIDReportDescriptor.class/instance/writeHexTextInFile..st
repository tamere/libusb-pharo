writing
writeHexTextInFile: aFileReference
	| writeStream |
	writeStream := aFileReference writeStream.
	[ self printHexOn: writeStream ]
		ensure: [ writeStream close ]