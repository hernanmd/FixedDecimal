arithmetic
+ operand 
	| nPart1 nPart2 s |
	(negative not and: [operand class = self class and: [operand scale = scale and: [negative = operand negative]]])
		ifTrue: [
			nPart1 := part1 + operand part1.
			nPart2 := part2 + operand part2.
			nPart2 >= (s := self tenRaisedTo: scale) ifTrue: [
				nPart1 := nPart1 + 1.
				nPart2 := nPart2 - s.
				].
			^self class new setPart1: nPart1 part2: nPart2 scale: scale negative: negative number: (number + operand number)
			].
	^((operand isKindOf: ScaledDecimal) and: [operand scale > scale]) ifTrue: [
		FixedDecimal newFromNumber: (operand asFraction + self asFraction) scale: operand scale
	] ifFalse: [
		FixedDecimal newFromNumber: (operand + self asFraction) scale: (scale)
	].