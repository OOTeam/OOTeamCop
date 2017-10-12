initialization
initialize
	super initialize.
	order := self class order.
	showOnlyRepositoriesFromWorkingCopy := true.
	workingCopyPattern := ''.
	repositoryPattern := ''