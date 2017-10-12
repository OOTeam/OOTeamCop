Actions
runOOTeamCopOverSelectedPackage
	| report |
	report := (OOTeamCop
		evaluate: workingCopy package name
		using: (OOCompositeRule composing: self rulesFromTreeMorph)) value.
	OOTeamCopResultViewSpec openFillingWith: report