#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: str_quote.pl
# Date		: 03/September/2001
# Author	: Bhavani Prasad Polimetla
# Description	: quotes
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

$str1 = 'single \'quotes\' use escepe sequence';
$str2 = q/single 'quotes' use q/;

$str3 = "double \"quotes\" use escepe sequence";
$str4 = q/double "quotes" use q/;

print("\nQuotes Demo");
print("\n$str1");
print("\n$str2");
print("\n$str3");
print("\n$str4");

print("\n");
#end of the script str_quote.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####