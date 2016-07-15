accessing - usage ids
reservedUsageIdsFor: usagePageId
	| camelCase baseSelector reservedIdsSelector |
	camelCase := (HIDUsagePage idToNameDict at: usagePageId) asCamelCase.
	baseSelector := camelCase first lowercase asString , camelCase allButFirst.
	reservedIdsSelector := (baseSelector , 'UsageReservedIds') asSymbol.
	^ reservedIdsSelector value: self
	
	