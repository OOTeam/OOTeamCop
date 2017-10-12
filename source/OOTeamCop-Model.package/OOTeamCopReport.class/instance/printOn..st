Printing
printOn: aStream
"Shows title and rules results"

	aStream nextPutAll: 'OOTeamCop common errors report'; lf.
	aStream nextPutAll: '=========================================='; lf.
	
	results do:[:result | aStream nextPutAll: result value; lf ].
	