as yet unclassified
packageFromName: aPackageName
	^ ((MCWorkingCopy allManagers
		collect: [ :workingCopy | workingCopy package ])
		detect: [ :package | package name = aPackageName ])
		correspondingRPackage.