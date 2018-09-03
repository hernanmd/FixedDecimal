testing
testAdoption
	| original |
	
	original := (8872240531573379/9007199254740992) asFixedDecimal: 3.
	self assert: '1.985' = ((1 + original) printString).
	self assert: '1.985' = ((original + 1) printString).
	self assert: '1.485' = ((1/2 + original) printString).
	self assert: '1.485' = ((original + (1/2)) printString).
	self assert: '1.985' = ((1.0 + original) printString).
	self assert: '1.985' = ((original + 1.0) printString).
	self assert: '1.985' = ((1s2 + original) printString).
	self assert: '1.985' = ((original + 1s2) printString).
	self assert: '1.985' = (('1' + original) printString).
	self assert: '1.985' = ((original + '1') printString).
	
