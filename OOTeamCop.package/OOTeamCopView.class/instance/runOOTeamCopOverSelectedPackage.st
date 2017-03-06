Actions
runOOTeamCopOverSelectedPackage
	(OOTeamCop
		evaluate: workingCopy package name
		using: (OOCompositeRule composing: OrderedCollection new)) value
		inspect