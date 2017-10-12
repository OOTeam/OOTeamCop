Tests
testOOUnnecesaryHierarchyRuleIndicatesThatThereIsAnUnnecesaryHierarchy
	self
		assert: (OOSuperclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithOneBlankMessage) value
			equals: 'FakeClassWithOneBlankMessage is superClass in an unnecesary hierachy';
		assert: (OOSubclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithOneBlankMessage) value equals: 'The class FakeClassWithOneBlankMessage is not subclass in an unnecesary hierarchy';
		assert: (OOSuperclassInAnUnnecesaryHierarchyRule new applyTo: FakeEmptySubclass) value equals: 'The class FakeEmptySubclass is not superclass in an unnecesary hierarchy';
		assert: (OOSubclassInAnUnnecesaryHierarchyRule new applyTo: FakeEmptySubclass) value
			equals: 'FakeEmptySubclass is subClass in an unnecesary hierachy'