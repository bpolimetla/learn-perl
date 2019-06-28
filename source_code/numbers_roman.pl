#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: numbers_roman.pl
# Date		: 30/August/2001
# Author	: Bhavani Prasad Polimetla
# Description	: Roman Numbers demo
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

use Roman;

print("\n\nRoman numbers demo");

$roman_number = roman(1111);

print("\nRoman value for number is $roman_number");

$arabic_number = arabic($roman_number);

print("\nCoverted back, $roman_number is $arabic_number");

print("\n");
#end of the script numbers_roman.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####
