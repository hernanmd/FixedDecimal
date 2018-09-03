arithmetic
// operand
	"Anser the integer quotient after dividing the receiver by operand
	with truncation towards negative infinity."
	^scale = 0 ifTrue: [part1 // operand] ifFalse: [self asFraction // operand]