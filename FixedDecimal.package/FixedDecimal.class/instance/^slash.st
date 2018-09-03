arithmetic
/ operand 

	operand = 0 ifTrue: [^ (ZeroDivide dividend: self) signal].
	^((operand isKindOf: ScaledDecimal) and: [operand scale > scale]) ifTrue: [
		FixedDecimal newFromNumber: (self asFraction / operand asFraction) scale: operand scale
	] ifFalse: [
		FixedDecimal newFromNumber: (self asFraction / operand asFraction) scale: (scale)
	].