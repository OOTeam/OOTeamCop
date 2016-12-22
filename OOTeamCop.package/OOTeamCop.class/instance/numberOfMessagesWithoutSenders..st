as yet unclassified
numberOfMessagesWithoutSenders: aClass
	"counts all the messages the have no senders"
	^ aClass methods count: [ :method | method senders isEmpty ]