Tests
testOOMessagesWithoutSendersRuleIndicatesThatThereIsTwoMessagesWithoutSendersInAClassWithTwoMessagesWithoutSenders
	
	self
		assert: (OOMessagesWithoutSendersRule new applyTo: FakeClassWithTwoMessagesWithoutSenders) value
		equals:
			'FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageTwo has no senders
	FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageOne has no senders'