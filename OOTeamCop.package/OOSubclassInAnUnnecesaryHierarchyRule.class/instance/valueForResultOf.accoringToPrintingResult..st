as yet unclassified
valueForResultOf: aClass accoringToPrintingResult: aString
	
	^ aClass superclass allSubclasses size = 1
		ifTrue: [ aClass printString , self methodErrorMessage ]
		ifFalse: [ '' ]