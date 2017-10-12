Tests
testOOCompositeRuleEvaluatingAllRules
	"The result will change if more rules are created or removed, this is to test the creation of a composite rule of all rules"

	self
		assert: (OOCompositeRule composingAllRules applyTo: FakeClassWithOneBlankMessage) value
		equals:
			'FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message
-----------------------
	The  class FakeClassWithOneBlankMessage has references
-----------------------
	The class FakeClassWithOneBlankMessage does not have large messages
-----------------------
	FakeClassWithOneBlankMessage>>#blankMessageOne has no senders
-----------------------
	The class FakeClassWithOneBlankMessage is not subclass in an unnecesary hierarchy
-----------------------
	FakeClassWithOneBlankMessage is superClass in an unnecesary hierachy
-----------------------
	'