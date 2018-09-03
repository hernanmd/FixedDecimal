printing
secondsAsHumanDuration
	"Shorten up the number into a rational timeframe that humans like.  1000's of stuff it too much."
	| x |
	
	self > 60 ifFalse: [^self asString, 's'].
	x := self / 60.
	x > 60 ifFalse: [^x asString, 'm'].
	x := x / 60.
	x > 24 ifFalse: [^x asString, 'h'].
	x := x / 24.
	^x asString, 'd'