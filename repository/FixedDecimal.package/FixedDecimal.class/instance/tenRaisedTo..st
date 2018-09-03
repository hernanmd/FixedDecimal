private
tenRaisedTo: int
	^PowersOf10 at: int ifAbsent: [10 raisedTo: int]