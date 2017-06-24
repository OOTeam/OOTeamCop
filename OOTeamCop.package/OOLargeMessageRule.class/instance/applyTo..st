Applying
applyTo: aClass
	| methodResults |
	"Seguro se puede mejorar"
	methodResults := aClass methods
		select: [ :method | method linesOfCode > self maxLinesOfCode ].
	^ methodResults
		ifEmpty: [ OOSimpleRuleResult passOf: aClass accordingTo: self ]
		ifNotEmpty: [ OOSimpleRuleResult failureOf: methodResults in: aClass accordingTo: self ]