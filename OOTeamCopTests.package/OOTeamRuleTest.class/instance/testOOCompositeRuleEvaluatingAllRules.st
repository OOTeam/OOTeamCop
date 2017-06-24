Tests
testOOCompositeRuleEvaluatingAllRules
	"The result will change if more rules are created or removed, this is to test the creation of a composite rule of all rules"

	self
		assert: (OOCompositeRule composingAllRules applyTo: FakeClassWithOneBlankMessage) value
		equals:
			'FakeClassWithOneBlankMessage>>#blankMessageOne is a blank message
-----------------------
	La clase FakeClassWithOneBlankMessage no tiene mensajes largos
-----------------------
	FakeClassWithOneBlankMessage>>#blankMessageOne has no senders
-----------------------
	La clase FakeClassWithOneBlankMessage no es superclase en una jerarquia innecesaria
-----------------------
	La clase FakeClassWithOneBlankMessage no es una clase sin referencias
-----------------------
	'