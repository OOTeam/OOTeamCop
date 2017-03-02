Applying
applyTo: aClass

	^ OOSimpleRuleResult
		of:
			(aClass methods
				select: [ :method | 
					(method messages isEmpty and: [ method assignmentNodes isEmpty ])
						and: [ method comment isNil ] ])
		in: aClass
		from: self