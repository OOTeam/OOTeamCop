Initialization
initializeOf: methods in: aClass from: aRule
	rule := aRule .
	results := methods
		collect: [ :method | method printString, aRule methodErrorMessage ]