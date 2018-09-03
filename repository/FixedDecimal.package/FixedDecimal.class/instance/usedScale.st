accessing
usedScale
	| t x |
	scale < 1 ifTrue: [^0].
	t := (String new: scale) atAllPut: $0.
	x := part2 asString.
	t := (t first: (scale - x size)), x.
	^x reverse asInteger asString size