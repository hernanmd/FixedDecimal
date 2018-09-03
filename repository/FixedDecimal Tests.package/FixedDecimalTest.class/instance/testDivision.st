testing
testDivision
	| fd |

	fd := FixedDecimal newFromNumber: 18.25 scale: 2.
	self assert: ('9.13' = (fd / (2 asFixedDecimal: 2)) printString).
	self assert: ('9.13' = (fd / 2.00) printString).
	self assert: ('9.13' = (fd / (200/100)) printString).
	self assert: ('9.13' = (fd / 2) printString).
	self assert: ('-9.13' = (fd / -2) printString).
	self assert: ('4.56' = (fd / 4) printString).