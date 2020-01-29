testing
testConvertFromInteger
	"Converting an Integer to a FixedDecimal yields a FixedDecimal with
	specified scale.  This is not what happens with ScaledDecimal!"

	| fd |
	fd := FixedDecimal newFromNumber: 13 scale: 6.
	self assert: 6 equals: fd scale.
	self assert: '13.000000' equals: fd printString.
	fd := FixedDecimal newFromNumber: -13 scale: 6.
	self assert: 6 equals: fd scale.
	self assert: '-13.000000' equals: fd printString.
	fd := FixedDecimal newFromNumber: 130000000013 scale: 6.
	self assert: 6 equals: fd scale.
	self assert: '130000000013.000000' equals: fd printString.
	fd := FixedDecimal newFromNumber: -130000000013 scale: 6.
	self assert: 6 equals: fd scale.
	self assert: '-130000000013.000000' equals: fd printString