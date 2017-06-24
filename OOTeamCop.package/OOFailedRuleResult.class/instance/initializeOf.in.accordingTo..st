Initialization
initializeOf: methods in: aClass accordingTo: aRule
	rule := aRule.
	evaluatedClass := aClass.
	results := methods collect: [ :method | method printString , aRule methodErrorMessage ]