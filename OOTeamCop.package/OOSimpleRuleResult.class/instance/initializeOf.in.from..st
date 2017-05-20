Initialization
initializeOf: methods in: aClass from: aRule
	rule := aRule .
	evaluatedClass := aClass .
	results := methods
		collect: [ :method | method printString, aRule methodErrorMessage ]