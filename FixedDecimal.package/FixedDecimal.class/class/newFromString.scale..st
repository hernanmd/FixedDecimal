as yet unclassified
newFromString: aNumberString scale: scaleIn
	"Answer a new instance of me.
	String is assumed to be of the format: '293492.230' "
	| temp part1 part2 |

	temp := aNumberString readStream.
	part1 := (temp upTo: $.) asSignedInteger.
	temp atEnd ifTrue: [	^self basicNew setPart1: part1 part2: 0 scale: scaleIn negative: (part1 < 0) number: part1].
	part2 := temp next: scaleIn.
	part2 := part2, ((String new: (scaleIn - part2 size)) atAllPut: $0).
	part2 := part2 asInteger.
	^self basicNew setPart1: part1 part2: part2 scale: scaleIn negative: (aNumberString includes: $-)