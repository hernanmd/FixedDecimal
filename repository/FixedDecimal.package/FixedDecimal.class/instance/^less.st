comparing
< aNumber
	"Implementation of Number 'comparing' method."
	aNumber isNumber ifFalse: [^ false].
	(aNumber isFixedDecimal) ifTrue: [^self lessThanDecimal: aNumber].
	^aNumber adaptToFixedDecimal: self andSend: #<