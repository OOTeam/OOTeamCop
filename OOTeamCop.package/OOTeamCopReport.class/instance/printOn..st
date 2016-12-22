as yet unclassified
printOn: aStream
	aStream nextPutAll: 'OOTeamCop common errors report'; lf.
	aStream nextPutAll: '=========================================='; lf.
	aStream nextPutAll: 'Number of messages without senders: '; print: self numberOfMessagesWithoutSenders; lf.
	aStream nextPutAll: 'Number of blank messages: '; print: self numberOfBlankMessages; lf.