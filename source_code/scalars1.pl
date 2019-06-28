#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: scalars1.pl
# Date		: 31/August/2001
# Author	: Bhavani Prasad Polimetla
# Description	: Explains about Scalar variables
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

$numeric = 12345;	#Numeric
$float = 12345.67;	#Float
$scientific = .23E-10;	#Scientific
$hexa = 0xffff;		# hex
$octal = 0377;		# octal

print("\nnumeric-->$numeric");
print("\nfloat-->$float");
print("\nscientific-->$scientific");
print("\nhexa-->$hexa");
print("\noctal-->$octal");
print("\n");

print("\nnumeric-->".($numeric + 1)."");
print("\nfloat-->".($float + 1)."");
print("\nscientific-->".($scientific + 1)."");
print("\nhexa-->".($hexa + 1)."");
print("\noctal-->".($octal + 1)."");
print("\n");


#end of the script scalars1.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####