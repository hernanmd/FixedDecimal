private
lessThanDecimal: decimal
	| scaleDiff |

	decimal scale = scale ifTrue: [^number < decimal number].
	^(scaleDiff := decimal scale - scale) > 0
		ifTrue: [^number * (self tenRaisedTo: scaleDiff) < decimal number]
		ifFalse: [^decimal greaterThanDecimal: self diff: scaleDiff]
