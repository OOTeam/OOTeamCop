Tests
testOOUnnecesaryHierarchyRuleIndicatesThatThereIsNotAnUnnecesaryHierarchy
	self
		assert: (OOSuperclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithTwoMessagesWithoutSenders) value
			equals: '';
		assert: (OOSubclassInAnUnnecesaryHierarchyRule new applyTo: FakeClassWithTwoMessagesWithoutSenders) value
			equals: ''