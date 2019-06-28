#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: hash2.pl
# Date		: 03/September/2001
# Author	: Bhavani Prasad Polimetla
# Description	: Hash demo
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl
print("\n\n Hash demo");

%staff = ( 'ram',27,'robert',28,'raheem',23);

print("\n\nchecking for given key");
if (exists $staff{"robert"})
{
	print("\nrobert existed");
}

print("\n\ntraversing a hash");
while (($name,$age) = each(%staff))
{
	print("\nname-->$name-->age-->$age");
}

print("\n\nDeleting raheem from element from hash");
delete $staff{"raheem"};
while (($name,$age) = each(%staff))
{
	print("\nname-->$name-->age-->$age");
}

print("\n\nInverting a hash");
%staff2 = reverse (%staff);
while (($name,$age) = each(%staff2))
{
	print("\nname-->$name-->age-->$age");
}

#assignment --> sorting and merging hashes.
	 

print("\n");

#end of the script hash2.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####