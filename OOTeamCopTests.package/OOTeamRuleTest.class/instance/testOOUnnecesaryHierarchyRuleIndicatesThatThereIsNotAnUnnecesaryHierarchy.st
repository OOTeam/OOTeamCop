Tests
testOOUnnecesaryHierarchyRuleIndicatesThatThereIsNotAnUnnecesaryHierarchy
	self
		assert: (OOSuperclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithTwoMessagesWithoutSenders) value
			equals: 'La clase FakeClassWithTwoMessagesWithoutSenders no es superclase en una jerarquia innecesaria';
		assert: (OOSubclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithTwoMessagesWithoutSenders) value
			equals: 'La clase FakeClassWithTwoMessagesWithoutSenders no es subclase en una jerarquia innecesaria'