Tests
testOOUnnecesaryHierarchyRuleIndicatesThatThereIsAnUnnecesaryHierarchy
	self
		assert: (OOSuperclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithOneBlankMessage) value
			equals: 'FakeClassWithOneBlankMessage is superClass in an unnecesary hierachy';
		assert: (OOSubclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithOneBlankMessage) value equals: 'La clase FakeClassWithOneBlankMessage no es subclase en una jerarquia innecesaria';
		assert: (OOSuperclassInAnUnnecesaryHierarchyRule new applyTo: FakeEmptySubclass) value equals: 'La clase FakeEmptySubclass no es superclase en una jerarquia innecesaria';
		assert: (OOSubclassInAnUnnecesaryHierarchyRule new applyTo: FakeEmptySubclass) value
			equals: 'FakeEmptySubclass is subClass in an unnecesary hierachy'