printing
printOn: aStream 
	| p2 |

	negative ifTrue: [aStream nextPut: $-].
	scale = 0 ifTrue: [aStream nextPutAll: part1 asString. ^self].
	p2 := part2 asString.
	p2 := String streamContents: [:s| 
		p2 size + 1 to: scale do: [:x| s nextPut: $0].
		s nextPutAll: p2.
		].
	aStream nextPutAll: part1 asString; nextPut: $.; nextPutAll: p2.