baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		 
		spec 
			package: 'FixedDecimal';
			package: 'FixedDecimal Tests'.

		spec group: 'default' with: #('FixedDecimal' 'FixedDecimal Tests' ). ].
