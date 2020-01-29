testing
testConvertFromFloat
	| aFloat fd f2 diff |
	aFloat := 11 / 13 asFloat.
	fd := FixedDecimal newFromNumber: aFloat scale: 2.
	self assert: 2 identicalTo: fd scale.
	self assert: '0.85' equals: fd printString.
	self assert: 85 identicalTo: fd part2.
	f2 := fd asFloat.
	self assert: 0.85 equals: f2.
	diff := f2 - aFloat.
	"self assert: diff < 1.0e-9."	"Unlike ScaledDecimal, this is NOT a reversable conversion!"
	self assert: diff > 1.0e-9