Applying
applyTo: aClass
	^ (self hasReferences: aClass)
		ifTrue: [ OOSimpleRuleResult passOf: aClass accordingTo: self ]
		ifFalse: [ OOSimpleRuleResult failureOf: #() in: aClass accordingTo: self ]