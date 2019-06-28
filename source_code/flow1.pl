#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: flow1.pl
# Date		: 30/August/2001
# Author	: Bhavani Prasad Polimetla
# Description	: Explains Flow Control Statements
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

#IF Statement Demo

print("\n\nIf Statement Demo ...\n");

$bFlag='TRUE';
if ($bFlag)
{
print("\nTRUE -- flag value-->$bFlag");
}
else
{
print("\nFALSE -- flag value-->$bFlag");
}

$bFlag='0';
if ($bFlag)
{
print("\nTRUE -- flag value-->$bFlag");
}
else
{
print("\nFALSE -- flag value-->$bFlag");
}
#print("\n");
#exit;

#While Statement Demo
print("\n\nWhile Statement Demo\n");
$iCount=0;
while ( $iCount <= 10)
{
print("-->$iCount");
$iCount = $iCount + 1;
}


#Do-While Statement Demo
print("\n\nDo-While Statement Demo\n");
$iCount2=20;
do
{
print("-->$iCount2");
$iCount2 = $iCount2 + 1;
}while ( $iCount2 <= 30);

#For Statement Demo
print("\n\nFor Statement Demo\n");

for ($iCount=30;$iCount <= 40;$iCount++)
{
print("-->$iCount");
}

#For Each Statement Demo
print("\n\nFor each Statement Demo\n");
@numbers=(1,'one',2,'two',3,'three',4,'four',5,'five');

foreach $i (@numbers)
{	
	print("-->$i");
}

print("\n");

#Continue - Break Statement Demo
print("\n\nContinue - Break Demo\n");
$iCount=0;

while (TRUE)
{
if(iCount >=5)
	continue{};
	
print("-->$iCount");
$iCount = $iCount + 1;

if ($iCount <= 10)
	break{};


}


#end of the script flow1.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####