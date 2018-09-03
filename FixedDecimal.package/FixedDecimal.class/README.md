A FixedDecimal is similar to a ScaledDecimal, but different in certain select ways.  It's primary purpose was to be able to represent precise decimals for such things as representing money - where ScaledDecimals leave something to be desired.  For instance, with ScaledDecimals, you get:
(33.333s withScale:2) + (33.333s withScale:2)   print it yields 66.67s 
but with FixedDecimals, you would get:
(33.333 asFixedDecimal: 2) + (33.333 asFixedDecimal: 2)	print it yields 66.66.
So, FixedDecimals round the numbers to the exact scale you specify - converting a float to a FixedDecimal and back will not necessarily return the starting number, unlike ScaledDecimals.

Instance Variables
	negative:		Indicates wheither the FixedDecimal is negative.  Used for printing internally.
	number:		A raw integer reprsenting the number (not scaled!).
	part1:		The integer part of the number.
	part2:		The non-integer part of the number (can't remember what that is called right now - too late at night).
	scale:		The scale of the FixedDecimal
