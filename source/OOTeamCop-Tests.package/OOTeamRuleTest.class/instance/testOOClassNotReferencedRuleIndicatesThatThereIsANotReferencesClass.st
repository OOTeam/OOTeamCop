Tests
testOOClassNotReferencedRuleIndicatesThatThereIsANotReferencesClass
"No funciona porque la estoy referenciando aca"
	self
		assert: (OOClassNotReferencedRule new applyTo: FakeClassWithOneBlankMessage) value
			equals: 'FakeClassWithNoReferences is a not referenced class';
		assert: (OOClassNotReferencedRule new applyTo: FakeClassWithOneBlankMessage) value
			equals: ''