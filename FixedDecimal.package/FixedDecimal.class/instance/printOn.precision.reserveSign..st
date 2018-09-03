printing
printOn: aStream precision: precise reserveSign: boolean
	"ReserveSign, if true, means that if we are not negative, then we should preceed the number with a 0.  So that the numbers will ALWAYS be the same size when printed."
	| p2 p1 |

	p1 := part1 asString.
	p1 size + scale > precise ifTrue: [Error signal: 'Decimal is too big to print!'].
	negative ifTrue: [aStream nextPut: $-] ifFalse: [boolean ifTrue: [aStream nextPut: $+]].
	p1 size + 1 to: (precise - scale) do: [:x| aStream nextPut: $0].
	precise - scale > 0 ifTrue: [aStream nextPutAll: p1].
	scale = 0 ifTrue: [
		boolean ifTrue: [aStream nextPut: $.].
		^self
		].
	aStream nextPut: $..
	p2 := part2 asString.
	p2 size + 1 to: scale do: [:x| aStream nextPut: $0].
	aStream nextPutAll: p2.
