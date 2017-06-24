Applying
applyTo: aClass
	| methodResults |
	"Seguro se puede mejorar"
	methodResults := aClass methods select: [ :method | method senders isEmpty ].
	^ methodResults
		ifEmpty: [ OOSimpleRuleResult passOf: aClass accordingTo: self ]
		ifNotEmpty: [ OOSimpleRuleResult failureOf: methodResults in: aClass accordingTo: self ]