as yet unclassified
newFromFixedDecimal: aDecimal scale: scaleIn 
	"Answer a new instance of me."
	| |

	aDecimal scale = scaleIn ifTrue: [^aDecimal].
	^aDecimal scale < scaleIn
		ifTrue: [
			self basicNew setPart1: aDecimal part1 part2: (aDecimal part2 * (self tenRaisedTo: (scaleIn - aDecimal scale))) scale: scaleIn negative: aDecimal negative
		]  ifFalse: [
			self basicNew setPart1: aDecimal part1 part2: (aDecimal part2 / (self tenRaisedTo: (aDecimal scale - scaleIn))) rounded scale: scaleIn negative: aDecimal negative
		].
