accessing - usage ids
usageDictionaryFor: usagePageId
	| camelCase baseSelector idsSelector |
	camelCase := (HIDUsagePage idToNameDict at: usagePageId) asCamelCase.
	baseSelector := camelCase first lowercase asString , camelCase allButFirst.
	idsSelector := (baseSelector , 'UsageIds') asSymbol.
	^ idsSelector value: self
	
	