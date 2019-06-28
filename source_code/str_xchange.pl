#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: str_xchange.pl
# Date		: 03/September/2001
# Author	: Bhavani Prasad Polimetla
# Description	: default value
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

$str1 = "hai";
$str2 = 'ram';

print("\Exchange Demo");

print("\nBefore changing");
print("\nvalue1-->$str1\nvalue2-->$str2");

($str1,$str2)=($str2,$str1);

print("\nAfter changing");
print("\nvalue1-->$str1\nvalue2-->$str2");

print("\n");
#end of the script str_xchange.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####