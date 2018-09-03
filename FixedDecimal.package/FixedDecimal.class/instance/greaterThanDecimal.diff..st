private
greaterThanDecimal: decimal diff: scaleDiff

	^number * (self tenRaisedTo: (decimal scale - scale)) > decimal number
