Actions
runRulesOnPackage

	workingCopy isNil
		ifTrue: [ UIManager default inform: 'Debe seleccionar algun paquete' ]
		ifFalse: [ self runOOTeamCopOverSelectedPackage ]