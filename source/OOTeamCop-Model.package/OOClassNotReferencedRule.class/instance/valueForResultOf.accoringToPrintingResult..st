Applying
valueForResultOf: aClass accoringToPrintingResult: aString
	^ (self hasReferences: aClass)
		ifTrue: [ '' ]
		ifFalse: [ aClass printString , self methodErrorMessage ]