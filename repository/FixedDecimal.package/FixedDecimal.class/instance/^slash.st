arithmetic
/ operand 

	operand = 0 ifTrue: [^ (ZeroDivide dividend: self) signal].
	^((operand isKindOf: ScaledDecimal) and: [operand scale > scale]) ifTrue: [
		self class newFromNumber: (self asFraction / operand asFraction) scale: operand scale
	] ifFalse: [
		self class newFromNumber: (self asFraction / operand asFraction) scale: (scale)
	].