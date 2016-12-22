as yet unclassified
evaluatePackage: aPackageName
	^ self new evaluateClasses: (self packageFromName: aPackageName) classes