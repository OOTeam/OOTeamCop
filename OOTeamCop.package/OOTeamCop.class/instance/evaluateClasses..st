as yet unclassified
evaluateClasses: aBunchOfClasses 
	"evaluates a bunch of classes and generates a report with the number of blank messages and the number of messages without senders"
	
	| numberOfMessagesWithoutSenders numberOfBlankMessages |

	numberOfMessagesWithoutSenders := aBunchOfClasses sum: [ :aClass | self numberOfMessagesWithoutSenders: aClass ].
	numberOfBlankMessages := aBunchOfClasses sum: [ :aClass | self numberOfBlankMessages: aClass ].
	
	^ OOTeamCopReport 
							newWithNumberOfMessagesWithoutSenders: numberOfMessagesWithoutSenders
							withNumberOfBlankMessages: numberOfBlankMessages.