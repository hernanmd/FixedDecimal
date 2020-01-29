testing
testReciprocal
	| original reciprocal |
	original := 8872240531573379 / 9007199254740992 asFixedDecimal: 35.
	reciprocal := original reciprocal.
	self assert: original ~~ reciprocal.
	self assert: original ~= reciprocal.
	self assert: 0 equals: original * reciprocal - 1.
	original := 1 / 3 asFixedDecimal: 6.
	reciprocal := original reciprocal.
	self assert: original ~~ reciprocal.
	self assert: original ~= reciprocal.
	self assert: 0 equals: original * reciprocal - 1