Morphic-UI
rulesSelection: aNumbersCollection

	aNumbersCollection isEmpty 
		ifTrue: [self selectedRules: OrderedCollection new]
		ifFalse: [self selectedRules: (aNumbersCollection collect: [:number | self rules at:number])].
	self changed: #rulesSelection.
	