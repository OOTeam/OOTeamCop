Morphic-UI
rulesSelection
	"Return the index of the selected repository.
	May return 0, which means that no repository is selected"

	^ self selectedRules
		ifNil: [ OrderedCollection new ]
		ifNotNil: [ self selectedRules collect: [ :rule | self rules indexOf: rule ] ]

	"^ self repositories indexOf: self repository"