Instance Creation
defaultSpec
	^ SpecLayout composed
		newColumn: [ :mainColumn | mainColumn newRow: [ :row | row add: #resultsDecorators ] ];
		yourself