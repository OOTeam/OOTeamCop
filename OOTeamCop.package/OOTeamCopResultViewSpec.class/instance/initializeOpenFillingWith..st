initialization
initializeOpenFillingWith: aReport
	results := aReport results.
	resultsDecorators := self newList
		items: (results flatCollect: [ :each | each ruleResults ]);
		backgroundColorBlock: [ :item :index | item colorToShow ];
		yourself.
	self title: 'Results'