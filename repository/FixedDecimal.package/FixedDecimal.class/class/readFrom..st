as yet unclassified
readFrom: aString
	"compatability with ScaledDecimal"
	
	^ self newFromString: aString scale: (aString size - (aString indexOf: $.))
	
"
FixedDecimal readFrom: '123.456' 
"