Morphic-UI
rulesListMenu: aMenu
	"self rules ifEmpty: [^ aMenu]."
	"self fillMenu: aMenu fromSpecs: self repositoryMenuSpec."
	^ aMenu