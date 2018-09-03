as yet unclassified
newFromNumber: aNumber scale: scaleIn 
	"Answer a new instance of me."
	| temp part1 part2 |

	(aNumber isKindOf: FixedDecimal) ifTrue: [^self newFromFixedDecimal: aNumber scale: scaleIn].
	temp := aNumber asFraction.
	part1 := temp truncated.
	part2 := (temp fractionPart * (10 raisedToInteger: scaleIn)) rounded.
	part2 asString size > scaleIn ifTrue: ["Rounding can get us here..."
		temp := (temp * (self tenRaisedTo: scaleIn)) rounded / (10 raisedToInteger: scaleIn).
		part1 := temp truncated.
		part2 := (temp fractionPart * (self tenRaisedTo: scaleIn)) rounded.
		].
	^self basicNew setPart1: part1 part2: part2 scale: scaleIn negative: (temp < 0)