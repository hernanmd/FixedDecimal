testing
testBoundaryIssues
	self assert: [(self class newFromNumber: (407584 * 100 / 5112120) scale: 1) printString = '8.0']