Tests
testOOBlankMessagesRuleWillNotConsiderAMessageWithCommentsOnlyAsABlankMessage
|classToTest|
classToTest := Smalltalk classNamed: #FakeClassWithOneMessageWithOnlyComments.
	self
		assert: (OOBlankMessagesRule new applyTo: classToTest) value
		equals: 'The class FakeClassWithOneMessageWithOnlyComments does not have empty mesaages'