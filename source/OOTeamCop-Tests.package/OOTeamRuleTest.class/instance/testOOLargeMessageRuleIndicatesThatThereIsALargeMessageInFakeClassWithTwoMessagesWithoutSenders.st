Tests
testOOLargeMessageRuleIndicatesThatThereIsALargeMessageInFakeClassWithTwoMessagesWithoutSenders
	self assert: (OOLargeMessageRule new applyTo: FakeClassWithTwoMessagesWithoutSenders) value equals: 'FakeClassWithTwoMessagesWithoutSenders>>#fakeMessageOne is a large message'