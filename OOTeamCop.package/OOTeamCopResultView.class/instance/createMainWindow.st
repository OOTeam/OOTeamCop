initialization
createMainWindow
	^ builder newColumn: (results flatCollect: [ :each | self createResultRowFor: each ])