Actions
runOOTeamCopOverSelectedPackage
	(OOTeamCop
		evaluate: workingCopy package name
		using:
			(OOCompositeRule composing: self rulesFromTreeMorph)) value inspect