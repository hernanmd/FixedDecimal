testing
testAddition
	| fd |
	fd := FixedDecimal newFromNumber: 18.25 scale: 2.
	self
		assert: '20.00'
		equals: (fd + (1.75 asFixedDecimal: 2)) printString.
	self assert: '20.00' equals: (fd + 1.75) printString.
	self assert: '20.00' equals: (fd + (175 / 100)) printString.
	self assert: '19.25' equals: (fd + 1) printString.
	self assert: '17.25' equals: (fd + -1) printString