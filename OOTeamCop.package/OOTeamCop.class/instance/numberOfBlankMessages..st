as yet unclassified
numberOfBlankMessages: aClass 
	"Counts all the methods that sends no messages in its implementation with no assignments and without comments"
	
	^ aClass methods count: [ :method | 
		(method messages isEmpty and: [ method assignmentNodes isEmpty ]) and: [ method comment isNil ]
	]