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
FakeClassWithAMessageThatAssignsAVariable>>#assignInstanceVariable has no senders
	FakeClassWithAMessageThatAssignsAVariable>>#assignTemporaryVariable has no senders

FakeClassWithOneBlankMessage>>#blankMessageOne has no senders
FakeClassWithOneMessageWithOnlyComments>>#messageWithCommentsOnly has no senders
FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageTwo has no senders
	FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageOne has no senders
'