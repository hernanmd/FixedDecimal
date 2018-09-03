printing
printString
	^String streamContents: [:s| self printOn: s]