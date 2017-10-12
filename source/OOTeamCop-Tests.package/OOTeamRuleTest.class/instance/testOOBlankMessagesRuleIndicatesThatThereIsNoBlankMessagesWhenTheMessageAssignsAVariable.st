Tests
testOOBlankMessagesRuleIndicatesThatThereIsNoBlankMessagesWhenTheMessageAssignsAVariable

	self
		assert: (OOBlankMessagesRule new applyTo: FakeClassWithAMessageThatAssignsAVariable) value
		equals: 'La clase FakeClassWithAMessageThatAssignsAVariable no tiene mensajes vacios'