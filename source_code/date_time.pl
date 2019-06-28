#####-----#####-----#####-----#####-----#####-----#####-----#####
# File Name	: date_time.pl
# Date		: 30/August/2001
# Author	: Bhavani Prasad Polimetla
# Description	: Write the description
#####-----#####-----#####-----#####-----#####-----#####-----#####

#!/usr/bin/perl

use Time::localtime;

$tm = localtime;
($day, $month, $year) = ($tm->mday, $tm->mon, $tm->year);

print("\n\nDate and Time Demo");
print("\nday-->$day");
print("\nmonth-->$month");
print("\nyear-->".($year + 1900));
print("\n");



print("\n");
#end of the script date_time.pl
#####-----#####-----#####-----#####-----#####-----#####-----#####