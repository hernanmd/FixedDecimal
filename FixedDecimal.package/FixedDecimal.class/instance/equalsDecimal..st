private
equalsDecimal: decimal
	| scaleDiff |

	decimal scale = scale ifTrue: [^decimal number = number].
	^(scaleDiff := decimal scale - scale) > 0
		ifTrue: [number * (self tenRaisedTo: scaleDiff) = decimal number]
		ifFalse: [decimal number * (self tenRaisedTo: scaleDiff abs) = number]
