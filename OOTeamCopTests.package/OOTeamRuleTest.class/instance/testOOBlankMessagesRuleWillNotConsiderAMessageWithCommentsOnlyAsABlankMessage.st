Tests
testOOBlankMessagesRuleWillNotConsiderAMessageWithCommentsOnlyAsABlankMessage

	self
		assert: (OOBlankMessagesRule new applyTo: FakeClassWithOneMessageWithOnlyComments) value
		equals: ''