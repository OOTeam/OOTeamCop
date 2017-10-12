Tests
testOOClassNotReferencedRuleIndicatesThatThereIsANotReferencesClass
	| classToTest |
	classToTest := Smalltalk classNamed: #FakeClassWithOneMessageWithOnlyComments.
	self assert: (OOClassNotReferencedRule new applyTo: classToTest) value equals: 'FakeClassWithNoReferences is a not referenced class'