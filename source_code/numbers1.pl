#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: numbers1.pl
# Date		: 30/August/2001
# Author	: Bhavani Prasad Polimetla
# Description	: Numbers demo
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

print("\n\nRounding the floating point numbers");
$a = 0.255;
$b = sprintf("%.2f",$a);
print("\n-->$a-->$b");

print("\n\nOperating on series of integers");
foreach $i (3..10) 
{
print("\n$i");
}

print("\n\nRandom Numbers");
$rand = rand(6);	#Give the number with in 6
print("\nradom with in 6-->$rand");

print("\n");
#end of the script numbers1.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####
