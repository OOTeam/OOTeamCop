Actions
runRulesOnPackage
	"OOCompositeRule deberia tener las reglas seleccionadas en vez de una colección vacia en el futuro - pipi"

	workingCopy isNil
		ifTrue: [ UIManager default inform: 'Debe seleccionar algun paquete' ]
		ifFalse: [ self runOOTeamCopOverSelectedPackage ]