Tests
testOOTeamCopEvaluatesAllClassesOfAPackageUsingCompositeRuleWithNoSendersRuleAndBlankMessageRule
	| ooTeamCopReport |
	
	ooTeamCopReport := OOTeamCop
		evaluate: 'OOTeamCop-FakeTestPackage'
		using:
			(OOCompositeRule
				composing: (OrderedCollection with: OOMessagesWithoutSendersRule new with: OOBlankMessagesRule new)).
	self
		assert: ooTeamCopReport value printString
		equals:
			'OOTeamCop common errors report
==========================================
FakeClassWithOneMessageWithOnlyComments>>#messageWithCommentsOnly has no senders
-----------------------
	The class FakeClassWithOneMessageWithOnlyComments does not have empty mesaages
-----------------------
	
FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageTwo has no senders
FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageOne has no senders
-----------------------
	The class FakeClassWithTwoMessagesWithoutSenders does not have empty mesaages
-----------------------
	
FakeClassWithAMessageThatAssignsAVariable>>#assignInstanceVariable has no senders
FakeClassWithAMessageThatAssignsAVariable>>#assignTemporaryVariable has no senders
-----------------------
	The class FakeClassWithAMessageThatAssignsAVariable does not have empty mesaages
-----------------------
	
The class FakeEmptySubclass does not ahve messages without senders
-----------------------
	The class FakeEmptySubclass does not have empty mesaages
-----------------------
	
FakeClassWithOneBlankMessage>>#blankMessageOne has no senders
-----------------------
	FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message
-----------------------
	
The class FakeClassWithNoReferences does not ahve messages without senders
-----------------------
	The class FakeClassWithNoReferences does not have empty mesaages
-----------------------
	
'