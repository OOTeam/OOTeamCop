Tests
testOOBlankMessagesRuleIndicatesThatThereIsNoBlankMessagesWhenTheMessageAssignsAVariable

	self
		assert: (OOBlankMessagesRule new applyTo: FakeClassWithAMessageThatAssignsAVariable) value
		equals: ''