*FixedDecimal
adaptToFixedDecimal: fixedDecimal andSend: arithmeticOpSelector
	^fixedDecimal perform: arithmeticOpSelector with: (self asFixedDecimal: fixedDecimal scale)