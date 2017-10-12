Tests
testOOUnnecesaryHierarchyRuleIndicatesThatThereIsNotAnUnnecesaryHierarchy
	self
		assert: (OOSuperclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithTwoMessagesWithoutSenders) value
			equals: 'The class FakeClassWithTwoMessagesWithoutSenders is not superclass in an unnecesary hierarchy';
		assert: (OOSubclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithTwoMessagesWithoutSenders) value
			equals: 'The class FakeClassWithTwoMessagesWithoutSenders is not subclass in an unnecesary hierarchy'