Tests
testOOBlankMessagesRuleWillNotConsiderAMessageWithCommentsOnlyAsABlankMessage

	self
		assert: (OOBlankMessagesRule new applyTo: FakeClassWithOneMessageWithOnlyComments) value
		equals: 'La clase FakeClassWithOneMessageWithOnlyComments no tiene mensajes vacios'