#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: str_default.pl
# Date		: 03/September/2001
# Author	: Bhavani Prasad Polimetla
# Description	: default value
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

$str1 = "hai";
#$str2 = '';

$value = defined($str2) ? $str2 : $str1;

print("\nDefault value Demo");

print("\n$value");

print("\n");
#end of the script str_default.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####