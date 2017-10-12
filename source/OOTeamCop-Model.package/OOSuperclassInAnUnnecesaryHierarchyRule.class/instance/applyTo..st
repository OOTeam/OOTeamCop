Applying
applyTo: aClass
	^ (self hasOnlyOneSubclass: aClass)
		ifTrue: [ OOSimpleRuleResult failureOf: #() in: aClass accordingTo: self ]
		ifFalse: [ OOSimpleRuleResult passOf: aClass accordingTo: self ]