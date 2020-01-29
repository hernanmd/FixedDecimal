testing
testPrintString
	"The printed representation of a ScaledDecimal is rounded, not truncated.
	This is not compatible with the way ScaledDecimal printing works in Squeak."

	| fd |
	fd := FixedDecimal newFromNumber: 13 / 11 scale: 6.
	self assert: '1.181818' equals: fd printString.
	fd := 13 / 11 asFixedDecimal: 5.
	self assert: '1.18182' equals: fd printString.
	fd := FixedDecimal newFromNumber: 13 / 11 scale: 5.
	self deny: '1.18181' equals: fd printString