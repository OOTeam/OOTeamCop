Accessing
allRulesExceptComposite

	^ OOTeamRule allSubclasses
		remove: self; collect: [ :ruleClass | ruleClass new ]