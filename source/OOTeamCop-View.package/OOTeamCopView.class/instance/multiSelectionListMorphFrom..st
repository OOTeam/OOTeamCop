Morphic-UI
multiSelectionListMorphFrom: listSymbol
	
	^ listMorph :=(MorphTreeModel new
		rootItems: (self perform: listSymbol);
		multiSelection: true;
		autoMultiSelection: true;
		beCheckList;
		defaultTreeMorph)
		buildContents;
		yourself