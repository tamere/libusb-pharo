associating
associateUsagesToUsagePages: hidObjects
	| currentUsagePage |
	currentUsagePage := nil.
	hidObjects do: [ :hidObject |
		hidObject class = HIDUsagePage
			ifTrue: [ currentUsagePage := hidObject ].
		hidObject class = HIDUsage
			ifTrue: [ 
				hidObject
					usagePage: (currentUsagePage
									ifNil: [ HIDParsingFailed signal: 'Usage found but no usage page was found before. Your hid report may be malformed.' ]) ] ].