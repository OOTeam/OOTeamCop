Applying
hasReferences: aClass
	^ aClass isMeta
		or:
			[ aClass subclasses isNotEmpty or: [ aClass allCallsOn isNotEmpty ] ]