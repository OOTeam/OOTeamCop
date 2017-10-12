Applying
applyTo: aClass
	^ ((aClass inheritsFrom: Trait) not and: [ self isUniqueSubclassInHierarchy: aClass ])
		ifTrue: [ OOSimpleRuleResult failureOf: #() in: aClass accordingTo: self ]
		ifFalse: [ OOSimpleRuleResult passOf: aClass accordingTo: self ]