testing
testFractionPart
	self
		assert: '-0.30'
		equals: (-53 / 10 asFixedDecimal: 2) fractionPart printString