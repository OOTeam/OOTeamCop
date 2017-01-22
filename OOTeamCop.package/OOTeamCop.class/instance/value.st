Evaluating
value
	"Apply rule to packages and generate report with results"
	
packages do:[:package | self applyRuleToPackage: package ].

	 ^OOTeamCopReport ofAll: ruleResults