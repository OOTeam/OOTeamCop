Morphic-UI
multiSelectionListMorphNoCheckListFrom: listSymbol
	
	^ workingCopyListMorph := (MorphTreeModel new
		rootItems: (self perform: listSymbol);
		multiSelection: true;
		autoMultiSelection: true;
		defaultTreeMorph)
		buildContents;
		yourself