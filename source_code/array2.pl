#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: array2.pl
# Date		: 03/September/2001
# Author	: Bhavani Prasad Polimetla
# Description	: Array demo 2
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

@array1 = ("this","is","difficult",);
@array_q = q(This is with q operator);
@array_qw = qw(This is with qw operator);

print("\narray1 is --> @array1");
print("\narray_q is --> @array_q");
print("\narray_qw is --> @array_qw");

#reversing any array
@a2 = reverse @array1;
print("\narray1 after reversing is --> @a2");

#appending an array
push(@array1,@array_q);
print("\narray1 after appedning is --> @array1");

print("\n");

#end of the script array2.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####