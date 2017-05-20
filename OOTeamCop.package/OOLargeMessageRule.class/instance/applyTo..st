as yet unclassified
applyTo: aClass

	^ OOSimpleRuleResult of: (aClass methods select: [ :method | method linesOfCode > self maxLinesOfCode ]) in: aClass from: self.