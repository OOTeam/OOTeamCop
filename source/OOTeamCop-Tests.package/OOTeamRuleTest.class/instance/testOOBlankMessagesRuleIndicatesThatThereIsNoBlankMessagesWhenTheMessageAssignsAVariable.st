Tests
testOOBlankMessagesRuleIndicatesThatThereIsNoBlankMessagesWhenTheMessageAssignsAVariable

	self
		assert: (OOBlankMessagesRule new applyTo: FakeClassWithAMessageThatAssignsAVariable) value
		equals: 'The class FakeClassWithAMessageThatAssignsAVariable does not have empty mesaages'