as yet unclassified
testOOTeamCopEvaluatesAllClassesOfAPackage
	| ooTeamCopReport |
	ooTeamCopReport := OOTeamCop evaluatePackage: 'OOTeamCopFakePackage'.
	
	self assert: ooTeamCopReport numberOfMessagesWithoutSenders equals: 2.
	self assert: ooTeamCopReport numberOfBlankMessages equals: 1.