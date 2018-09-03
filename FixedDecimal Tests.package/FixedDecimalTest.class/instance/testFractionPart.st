testing
testFractionPart
	
	self assert: '-0.30' = (-53/10 asFixedDecimal: 2) fractionPart printString
