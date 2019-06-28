#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: array3.pl
# Date		: 03/September/2001
# Author	: Bhavani Prasad Polimetla
# Description	: push and pop demo
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

print("\n\nPush and Pop demo on arrays");

@array1 = ("apple", "bat", "cat", "dog", "elephant");
print("\n\narray1 is --> @array1");



$word = pop(@array1);
print("\n\nword-->$word");
print("\narray1 after pop--> @array1");

push(@array1,"fox");
print("\narray1 after push--> @array1");

@a2=reverse(@array1);
print("\narray1 after reverse--> @a2");

@a3=sort(@a2);
print("\narray1 after sort--> @a3");


print("\n\n");

#end of the script array3.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####