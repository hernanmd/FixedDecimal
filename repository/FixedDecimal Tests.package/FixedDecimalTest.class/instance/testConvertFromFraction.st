testing
testConvertFromFraction
	| fd |
	fd := FixedDecimal newFromNumber: 13 / 11 scale: 6.
	self assert: FixedDecimal identicalTo: fd class.
	self assert: '1.181818' equals: fd printString.
	self assert: 6 identicalTo: fd scale