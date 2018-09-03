testing
testMultiplication
	| fd |

	fd := FixedDecimal newFromNumber: 18.25 scale: 2.
	self assert: ('36.50' = (fd * (2 asFixedDecimal: 2)) printString).
	self assert: ('36.50' = (fd * 2.00) printString).
	self assert: ('36.50' = (fd * (200/100)) printString).
	self assert: ('36.50' = (fd * 2) printString).
	self assert: ('-36.50' = (fd * -2) printString).
	self assert: ('73.00' = (fd * 4) printString).