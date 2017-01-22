Tests
testOOTeamCopEvaluatesAllClassesOfAPackageUsingCompositeRuleWithNoSendersRuleAndBlankMessageRule
	| ooTeamCopReport |
	
	ooTeamCopReport := OOTeamCop
		evaluate: 'OOTeamCopFakePackage'
		using:
			(OOCompositeRule
				composing: (OrderedCollection with: OOMessagesWithoutSendersRule new with: OOBlankMessagesRule new)).
	self
		assert: ooTeamCopReport value printString
		equals:
			'OOTeamCop common errors report
==========================================
FakeClassWithAMessageThatAssignsAVariable>>#assignInstanceVariable has no senders
	FakeClassWithAMessageThatAssignsAVariable>>#assignTemporaryVariable has no senders
-----------------------
	
FakeClassWithOneBlankMessage>>#blankMessageOne has no senders
-----------------------
	FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message
-----------------------
	
FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageTwo has no senders
	FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageOne has no senders
-----------------------
	
FakeClassWithOneMessageWithOnlyComments>>#messageWithCommentsOnly has no senders
-----------------------
	
'