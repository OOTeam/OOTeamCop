Tests
testOOTeamCopEvaluatesAllClassesOfAPackageUsingNoSendersRule
	
	| ooTeamCopReport |
	ooTeamCopReport := OOTeamCop
		evaluate: 'OOTeamCop-FakeTestPackage'
		using: OOMessagesWithoutSendersRule new.
	self
		assert: ooTeamCopReport value printString
		equals:
			'OOTeamCop common errors report
==========================================
FakeClassWithOneMessageWithOnlyComments>>#messageWithCommentsOnly has no senders
FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageTwo has no senders
FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageOne has no senders
FakeClassWithAMessageThatAssignsAVariable>>#assignInstanceVariable has no senders
FakeClassWithAMessageThatAssignsAVariable>>#assignTemporaryVariable has no senders
The class FakeEmptySubclass does not ahve messages without senders
FakeClassWithOneBlankMessage>>#blankMessageOne has no senders
The class FakeClassWithNoReferences does not ahve messages without senders
'