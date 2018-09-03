comparing
= aNumber
	"Implementation of Number 'comparing' method."
	aNumber isNumber ifFalse: [^ false].
	(aNumber isFixedDecimal) ifTrue: [^self equalsDecimal: aNumber].
	^aNumber adaptToFixedDecimal: self andSend: #=