*FixedDecimal
adaptToFixedDecimal: fixedDecimal andSend: arithmeticOpSelector

	^ fixedDecimal perform: arithmeticOpSelector with: (FixedDecimal newFromNumber: self asFraction scale: scale)