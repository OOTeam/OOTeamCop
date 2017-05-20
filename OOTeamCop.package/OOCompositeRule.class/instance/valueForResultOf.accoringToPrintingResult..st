Applying
valueForResultOf: aClass accoringToPrintingResult: aString

	^ rules
		collect: [ :aRule | aRule valueForResultOf: aClass accoringToPrintingResult: aString ]