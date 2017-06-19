Morphic-UI
treeMorphNoMenu: listSymbol
	^ self
		treeMorph: (listSymbol, 'Tree') asSymbol
		selection: (listSymbol, 'SelectionWrapper') asSymbol
		menu: nil