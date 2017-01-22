Instance Creation
evaluateAll: aPackageNamesCollection using: aOOTeamRule
	^ self new
		initializeEvaluatingAll: (self packagesFromNames: aPackageNamesCollection)
		using: aOOTeamRule