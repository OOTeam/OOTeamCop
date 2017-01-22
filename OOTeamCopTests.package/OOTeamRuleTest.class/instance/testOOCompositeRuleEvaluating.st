Tests
testOOCompositeRuleEvaluating
	"Indicates that there is a blank message and a message without senders in a class with a blank message without senders"

	self
		assert:
			((OOCompositeRule
				composing: (OrderedCollection with: OOMessagesWithoutSendersRule new with: OOBlankMessagesRule new))
				applyTo: FakeClassWithOneBlankMessage) value
		equals:
			'FakeClassWithOneBlankMessage>>#blankMessageOne has no senders
-----------------------
	FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message
-----------------------
	'