arithmetic
- operand 
	| nNumber nPart1 nPart2 nNegative |

	(operand class = self class and: [operand scale = scale]) ifTrue: [
		negative ~= operand negative ifTrue: [
			part1 + operand part1 < (self tenRaisedTo: (scale + 1)) ifTrue: [
				^self class new setPart1: (part1 + operand part1) part2: (part2 + operand part2) scale: scale negative: negative number: (number - operand number)
				] ifFalse: [^self + operand negated].
			].
		nNumber := number - operand number.
		((negative not and: [nNumber < 0]) or: [negative and: [nNumber > 0]]) ifTrue: [nNegative := negative not] ifFalse: [nNegative := negative].
		nPart2 :=  part2 - operand part2.
		nPart1 := part1 - operand part1 - (nPart2 < 0 ifTrue: [1] ifFalse: [0]).
		^self class new setPart1: nPart1 part2: nPart2 scale: scale negative: nNegative number: nNumber
		].
	^((operand isKindOf: FixedDecimal) and: [operand scale > scale]) ifTrue: [
		FixedDecimal newFromNumber: (self asFraction - operand asFraction) scale: operand scale
	] ifFalse: [
		^self + operand negated
	].