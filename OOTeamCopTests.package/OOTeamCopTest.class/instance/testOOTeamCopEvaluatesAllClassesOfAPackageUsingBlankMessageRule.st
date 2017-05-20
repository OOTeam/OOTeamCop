Tests
testOOTeamCopEvaluatesAllClassesOfAPackageUsingBlankMessageRule
	
	| ooTeamCopReport |
	ooTeamCopReport := OOTeamCop
		evaluate: 'OOTeamCopFakePackage'
		using: OOBlankMessagesRule new.
	self
		assert: ooTeamCopReport value printString
		equals:
			'OOTeamCop common errors report
==========================================



FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message

'