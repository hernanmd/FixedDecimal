converting
asScale: newScale
	scale = newScale ifTrue: [^self].
	^self class newFromFixedDecimal: self scale: newScale 