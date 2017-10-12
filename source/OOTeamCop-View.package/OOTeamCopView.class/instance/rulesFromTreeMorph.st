Actions
rulesFromTreeMorph
	^ (listMorph selectedMorphList
		collect: [ :each | each complexContents item ]) asOrderedCollection