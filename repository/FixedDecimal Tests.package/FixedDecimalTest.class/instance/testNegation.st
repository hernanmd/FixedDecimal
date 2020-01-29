testing
testNegation
	| original negated |
	original := 53 / 10 asFixedDecimal: 2.
	negated := original negated.
	self assert: original ~~ negated.
	self assert: original equals: negated negated