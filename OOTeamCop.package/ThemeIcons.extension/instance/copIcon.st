*OOTeamCop
copIcon
	"Private - Generated method"

	^ icons
		at: #copIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self copIconContents readStream) ]