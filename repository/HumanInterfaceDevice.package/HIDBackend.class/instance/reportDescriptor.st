accessing
reportDescriptor
	^ reportDescriptor ifNil: [ reportDescriptor := self fetchReportDescriptor ]