Applying
applyTo: aClass

	^ OOSimpleRuleResult of: (aClass methods select: [ :method | method senders isEmpty ]) in: aClass from: self.