testing
testSubtraction
	| fd |

	fd := FixedDecimal newFromNumber: 18.25 scale: 2.
	self assert: ('17.00' = (fd - (1.25 asFixedDecimal: 2)) printString).
	self assert: ('17.00' = (fd - 1.25) printString).
	self assert: ('17.00' = (fd - (125/100)) printString).
	self assert: ('17.25' = (fd - 1) printString).
	self assert: ('19.25' = (fd - -1) printString).