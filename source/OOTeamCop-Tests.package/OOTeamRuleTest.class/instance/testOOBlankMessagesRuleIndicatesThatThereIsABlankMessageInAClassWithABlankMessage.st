Tests
testOOBlankMessagesRuleIndicatesThatThereIsABlankMessageInAClassWithABlankMessage

	self
		assert: (OOBlankMessagesRule new applyTo: FakeClassWithOneBlankMessage ) value
		equals: 'FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message'