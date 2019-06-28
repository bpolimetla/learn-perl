#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: scalars3.pl
# Date		: 31/August/2001
# Author	: Bhavani Prasad Polimetla
# Description	: Explains about reference variables.
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl


$numx = 3.14159;              # numeric
$refx = \$numx;               # reference
$tglobx = *numx;              # typeglob (different from file name globbing)

print("\nnumx-->$numx");

print("\n\nrefx-->$refx");
print("\nrefx-->$$refx");

$$refx = $$refx + 1;
print("\n\nnumx-->$numx");
print("\nrefx-->$$refx");

print("\n\ntglobx-->$tglobx");
print("\ntglobx-->$$tglobx");

print("\n");
#end of the script scalars3.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####