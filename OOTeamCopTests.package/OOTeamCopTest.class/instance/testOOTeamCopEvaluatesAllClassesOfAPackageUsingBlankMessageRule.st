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
La clase FakeClassWithAMessageThatAssignsAVariable no tiene mensajes vacios
La clase FakeClassWithNoReferences no tiene mensajes vacios
La clase FakeEmptySubclass no tiene mensajes vacios
FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message
La clase FakeClassWithOneMessageWithOnlyComments no tiene mensajes vacios
La clase FakeClassWithTwoMessagesWithoutSenders no tiene mensajes vacios
'