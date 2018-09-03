testing
testConvertFromFloat
	| aFloat fd f2 diff |

	aFloat := 11/13 asFloat.
	fd := FixedDecimal newFromNumber: aFloat scale: 2.
	self assert: 2 == fd scale.
	self assert: '0.85' = fd printString. "Note - different than ScaledDecimal.  For ScaledDecimal
										this will equal 0.84.  Fixed decimals - we actually
										round to the scale provided - we don't want the 
										extra precision that ScaledDecimal keeps around!"
	self assert: 85 == fd part2.
	f2 := fd asFloat.
	self assert: 0.85 = f2.
	diff := f2 - aFloat.
	"self assert: diff < 1.0e-9." "Unlike ScaledDecimal, this is NOT a reversable conversion!"
	self assert: diff > 1.0e-9.