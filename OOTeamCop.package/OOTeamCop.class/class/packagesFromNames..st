Accessing
packagesFromNames: aPackageNamesCollection

	^ aPackageNamesCollection
		collect: [ :packageName | 
			((MCWorkingCopy allManagers collect: [ :workingCopy | workingCopy package ])
				detect: [ :package | package name = packageName ]) correspondingRPackage ]