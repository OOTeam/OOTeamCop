as yet unclassified
testOOTeamCopIndicatesHowMuchBlankMessagesAreInAClass

	self assert: (OOTeamCop new numberOfBlankMessages: ClassWithOneBlankMessage) equals: 1