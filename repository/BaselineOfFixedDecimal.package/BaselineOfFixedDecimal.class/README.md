A FixedDecimal is similar to a ScaledDecimal, but different in certain select ways. It's primary purpose was to be able to represent precise decimals for such things as representing money - where ScaledDecimals leave something to be desired.

For instance, with ScaledDecimals, you get:

(33.333s withScale:2) + (33.333s withScale:2) = 66.67s 

but with FixedDecimals, you would get:

(33.333 asFixedDecimal: 2) + (33.333 asFixedDecimal: 2) = 66.66. 

So, FixedDecimals round the numbers to the exact scale you specify - converting a float (or fraction) to a FixedDecimal and back will not necessarily return the starting number, unlike ScaledDecimals.

Forked from http://www.squeaksource.com/FixedDecimal.html Credits to Chris Cunningham