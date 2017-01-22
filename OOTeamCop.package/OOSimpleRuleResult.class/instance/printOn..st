Printing
printOn: aStream
"esta feo , arreglar"
	^ results isEmpty
		ifFalse: [ results
				asStringOn: aStream
				delimiter:
					'
	' ]