class initialization
initialize
	PowersOf10 := Array new: 9.
	PowersOf10 at: 1 put: 10.
	PowersOf10 at: 2 put: 100.
	PowersOf10 at: 3 put: 1000.
	PowersOf10 at: 4 put: 10000.
	PowersOf10 at: 5 put: 100000.
	PowersOf10 at: 6 put: 1000000.
	PowersOf10 at: 7 put: 10000000.
	PowersOf10 at: 8 put: 100000000.
	PowersOf10 at: 9 put: 1000000000.

	super initialize