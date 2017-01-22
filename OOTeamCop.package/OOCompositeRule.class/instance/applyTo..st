Applying
applyTo: aClass

	^ OOCompositeRuleResult composingAll: (rules collect: [ :rule | rule applyTo: aClass ])