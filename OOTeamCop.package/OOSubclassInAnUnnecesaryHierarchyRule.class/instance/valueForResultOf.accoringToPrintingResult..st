as yet unclassified
valueForResultOf: aClass accoringToPrintingResult: aString
	^ (self isUniqueSubclassInHierarchy: aClass)
		ifTrue: [ aClass printString , self methodErrorMessage ]
		ifFalse: [ '' ]