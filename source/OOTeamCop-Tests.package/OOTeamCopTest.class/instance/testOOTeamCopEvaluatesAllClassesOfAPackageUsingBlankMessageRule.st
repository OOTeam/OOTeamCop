Tests
testOOTeamCopEvaluatesAllClassesOfAPackageUsingBlankMessageRule
	
	| ooTeamCopReport |
	ooTeamCopReport := OOTeamCop
		evaluate: 'OOTeamCop-FakeTestPackage'
		using: OOBlankMessagesRule new.
	self
		assert: ooTeamCopReport value printString
		equals:
			'OOTeamCop common errors report
==========================================
The class FakeClassWithOneMessageWithOnlyComments does not have empty mesaages
The class FakeClassWithTwoMessagesWithoutSenders does not have empty mesaages
The class FakeClassWithAMessageThatAssignsAVariable does not have empty mesaages
The class FakeEmptySubclass does not have empty mesaages
FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message
The class FakeClassWithNoReferences does not have empty mesaages
'