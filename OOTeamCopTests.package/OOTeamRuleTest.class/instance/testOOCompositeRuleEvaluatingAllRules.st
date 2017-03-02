Tests
testOOCompositeRuleEvaluatingAllRules
	"The result will change if more rules are created or removed, this is to test the creation of a composite rule of all rules"

	self
		assert:
			((OOCompositeRule
				composingAllRules  )
				applyTo: FakeClassWithOneBlankMessage) value
		equals:
			'FakeClassWithOneBlankMessage>>#blankMessageOne has no senders
-----------------------
	FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message
-----------------------
	'