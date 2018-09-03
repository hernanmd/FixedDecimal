converting
adapt: aNumber andSend: selector
	^(aNumber asFixedDecimal: scale) perform: selector with: self