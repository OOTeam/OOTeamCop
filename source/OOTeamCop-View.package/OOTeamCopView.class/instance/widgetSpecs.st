Accessing
widgetSpecs
	| searchBarOffset |
	
	searchBarOffset := 30 + StandardFonts defaultFont height + 10.
	
	^ {
		"send fractions offsets"
		{{#buttonRow}. {0. 0. 1. 0}. {0. 0. 0. 30.}}.
		
		{{#workingCopySearchField}. {0. 0. 0.5. 0.}. {0. 30. 0. searchBarOffset.}}.
		{{#treeMorphNoMenu:. #workingCopy}. {0. 0. 0.5. 1}. {0. searchBarOffset+3. 0. 0.}}.
		
		{{#multiSelectionListMorphFrom: . #rulesList }. {0.5. 0. 1. 1}. {0. searchBarOffset+3. 0. 0.}}.
		}.