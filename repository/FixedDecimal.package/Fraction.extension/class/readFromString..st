*FixedDecimal
readFromString: aString
	"Create an object based on the contents of aString."
	| string |

	string := (aString includes: $/) ifTrue: [aString] ifFalse: [aString, '/1'].
	^self readFrom: (ReadStream on: string)