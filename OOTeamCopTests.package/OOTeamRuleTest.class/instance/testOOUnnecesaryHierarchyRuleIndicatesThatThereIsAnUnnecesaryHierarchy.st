Tests
testOOUnnecesaryHierarchyRuleIndicatesThatThereIsAnUnnecesaryHierarchy
	self
		assert: (OOSuperclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithOneBlankMessage) value
			equals: 'FakeClassWithOneBlankMessage is superClass in an unnecesary hierachy';
		assert: (OOSubclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithOneBlankMessage) value equals: '';
		assert: (OOSuperclassInAnUnnecesaryHierarchyRule new applyTo: FakeEmptySubclass) value equals: '';
		assert: (OOSubclassInAnUnnecesaryHierarchyRule new applyTo: FakeEmptySubclass) value
			equals: 'FakeEmptySubclass is subClass in an unnecesary hierachy'