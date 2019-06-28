#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: str_case.pl
# Date		: 03/September/2001
# Author	: Bhavani Prasad Polimetla
# Description	: case controling
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

print("\ncase controling Demo");

$str_given = "aAbBcCdDeDfF";

$str_uc = uc($str_given);	#Entire word to upper case
$str_lo = lc($str_given);	#Entire word to lower case

$str_uc1 = "\u$str_given";	#First Character to upper case
$str_lo1 = "\l$str_uc1";	#First Character to lower case

print("\n$str_uc");
print("\n$str_lo");
print("\n$str_uc1");
print("\n$str_lo1");


print("\n");
#end of the script str_case.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####