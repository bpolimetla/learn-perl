#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: str_substring.pl
# Date		: 03/September/2001
# Author	: Bhavani Prasad Polimetla
# Description	: substring demo
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

#$value = substr($string, $offset, $count);
#$value = substr($string, $offset);

$str1 = "Programming Republic of PERL";

print("\nSub String Demo");
$str2 = substr($str1,12,8);
$str3 = substr($str1,24);
print("\nGiven-->$str1");
print("\n$str2\n$str3");

print("\n");
#end of the script str_substring.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####