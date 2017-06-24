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
	La clase FakeClassWithAMessageThatAssignsAVariable no tiene mensajes vacios
-----------------------
	
La clase FakeClassWithNoReferences no tiene mensajes sin senders
-----------------------
	La clase FakeClassWithNoReferences no tiene mensajes vacios
-----------------------
	
La clase FakeEmptySubclass no tiene mensajes sin senders
-----------------------
	La clase FakeEmptySubclass no tiene mensajes vacios
-----------------------
	
FakeClassWithOneBlankMessage>>#blankMessageOne has no senders
-----------------------
	FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message
-----------------------
	
FakeClassWithOneMessageWithOnlyComments>>#messageWithCommentsOnly has no senders
-----------------------
	La clase FakeClassWithOneMessageWithOnlyComments no tiene mensajes vacios
-----------------------
	
FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageTwo has no senders
FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageOne has no senders
-----------------------
	La clase FakeClassWithTwoMessagesWithoutSenders no tiene mensajes vacios
-----------------------
	
'