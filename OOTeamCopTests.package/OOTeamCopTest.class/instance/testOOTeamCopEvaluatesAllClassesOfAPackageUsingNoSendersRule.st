Tests
testOOTeamCopEvaluatesAllClassesOfAPackageUsingNoSendersRule
	
	| ooTeamCopReport |
	ooTeamCopReport := OOTeamCop
		evaluate: 'OOTeamCopFakePackage'
		using: OOMessagesWithoutSendersRule new.
	self
		assert: ooTeamCopReport value printString
		equals:
			'OOTeamCop common errors report
==========================================
FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageTwo has no senders
	FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageOne has no senders
FakeClassWithAMessageThatAssignsAVariable>>#assignInstanceVariable has no senders
	FakeClassWithAMessageThatAssignsAVariable>>#assignTemporaryVariable has no senders
FakeClassWithOneMessageWithOnlyComments>>#messageWithCommentsOnly has no senders
FakeClassWithOneBlankMessage>>#blankMessageOne has no senders

'