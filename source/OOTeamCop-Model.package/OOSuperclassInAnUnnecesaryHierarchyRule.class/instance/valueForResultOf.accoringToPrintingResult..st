as yet unclassified
valueForResultOf: aClass accoringToPrintingResult: aString
	^ (self hasOnlyOneSubclass: aClass)
		ifTrue: [ aClass printString , self methodErrorMessage ]
		ifFalse: [ '' ]