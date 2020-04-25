arithmetic
* operand 

	^((operand isKindOf: ScaledDecimal) and: [operand scale > scale]) ifTrue: [
		self class newFromNumber: (operand asFraction * self asFraction) scale: operand scale
	] ifFalse: [
		self class newFromNumber: (operand * self asFraction) scale: (scale)
	].