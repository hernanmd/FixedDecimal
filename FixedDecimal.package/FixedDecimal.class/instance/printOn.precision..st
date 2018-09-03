printing
printOn: aStream precision: precise
	| p2 p1 |

	p1 := part1 asString.
	p1 size + scale > precise ifTrue: [^nil].
	p1 := String streamContents: [:s|
		negative ifTrue: [s nextPut: $-].
		p1 size + 1 to: (precise - scale) do: [:x| s nextPut: $0].
		precise - scale > 0 ifTrue: [s nextPutAll: p1].
		].
	scale = 0 ifTrue: [aStream nextPutAll: p1. ^self].
	p2 := part2 asString.
	p2 := String streamContents: [:s| 
		p2 size + 1 to: scale do: [:x| s nextPut: $0].
		s nextPutAll: p2.
		].
	aStream nextPutAll: p1; nextPut: $.; nextPutAll: p2.