Printing
print: result ifNotEmptyOn: aStream
" esta feo, arreglar"
	result value = ''
		ifFalse: [ aStream nextPutAll: result value.
			aStream nextPut: Character lf.
			aStream
				nextPutAll:
					'-----------------------
	' ]