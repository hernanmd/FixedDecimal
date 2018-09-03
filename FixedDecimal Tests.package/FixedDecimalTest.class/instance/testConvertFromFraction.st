testing
testConvertFromFraction

	| fd |
	fd := FixedDecimal newFromNumber: (13 / 11) scale: 6.
	self assert: FixedDecimal == fd class.
	self assert: ('1.181818' = fd printString).
	self assert: 6 == fd scale
