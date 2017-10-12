Applying
applyTo: aClass
	| methodResults |
	"Seguro se puede mejorar"
	methodResults := aClass methods
		select: [ :method | 
			(method messages isEmpty and: [ method assignmentNodes isEmpty ])
				and: [ method comment isNil ] ].
	^ methodResults
		ifEmpty: [ OOSimpleRuleResult passOf: aClass accordingTo: self ]
		ifNotEmpty: [ OOSimpleRuleResult failureOf: methodResults in: aClass accordingTo: self ]