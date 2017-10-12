Applying
applyTo: aClass
	^ (self isUniqueSubclassInHierarchy: aClass)
		ifTrue: [ OOSimpleRuleResult failureOf: #() in: aClass accordingTo: self ]
		ifFalse: [ OOSimpleRuleResult passOf: aClass accordingTo: self ]