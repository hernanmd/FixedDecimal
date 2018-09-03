arithmetic
* operand 

	^((operand isKindOf: ScaledDecimal) and: [operand scale > scale]) ifTrue: [
		FixedDecimal newFromNumber: (operand asFraction * self asFraction) scale: operand scale
	] ifFalse: [
		FixedDecimal newFromNumber: (operand * self asFraction) scale: (scale)
	].