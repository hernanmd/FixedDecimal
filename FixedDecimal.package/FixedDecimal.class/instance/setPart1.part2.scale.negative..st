private
setPart1: part1In part2: part2In scale: scaleIn negative: boolean

	part1 := part1In abs.
	part2 := part2In abs.
	scale := scaleIn.
	negative := boolean.
	number := (part1 * (self tenRaisedTo: scale)) + part2.
	negative ifTrue: [number := 0 - number].