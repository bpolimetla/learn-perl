#!perl

# $Id: DirTree.pl, v1.1 1998/10/07 12:22:20 meltzek Exp meltzek $

# By, Kevin Meltzer kmeltz@cris.com

# for usage/options:
# perl DirTree.pl -h


use Strict;
use vars qw($opt_l $opt_d $opt_v $opt_o $opt_h $opt_s $opt_m);
use Getopt::Std;
my $root=shift @ARGV;
#$root =~ s/\\$/$root/g if (/\:$/,$root); 
$root =~ s/$/\\/g  if (/\w$/,$root && (/^\w.(:\\)$/,$root));#make sure there is a 
							    # \ at end of dir string

($VERSION = substr(q$Revision: 1.1$, 10)) = s/\s+$//;

if (!defined($root)) {
	&help;
	exit;
}

$sizeTot=0;

getopts("l:dvo:hsm");

if ($opt_h || $#ARGV != -1) {
	&help;
	exit;
}

if ($opt_l && !$opt_o) {
	no_opt("-l");
}

if ($opt_s && !$opt_o) {
	no_opt("-s");
}

if ($opt_m && !$opt_o) {
	no_opt("-m");
}

sub no_opt {
	local($opt) = @_;
	print "\nYou have selected the $opt option, but have not specified an output file.\n\n";
	&help;
	exit;
}

my ($outFile, $only_dir, $verbose, $doSize, $mod, $label);
if ($opt_o) {$outFile=$opt_o;}
if ($opt_d) {$only_dir=1;}
if ($opt_v) {$verbose=1;}
if ($opt_s) {$doSize=1;}
if ($opt_m) {$doMod=1;}
if ($opt_l) {$label=$opt_l;}

if (defined $outFile) {
	open(LIST,">$outFile") || print "Can't open $outFile $!";
}

if (defined $label) {
	print LIST $label . "\n";
	print LIST '-' x length($label) . "\n";
}

$dirs=0; #directory count	
$fs=0; # file count
&get_the_files($root);

sub get_the_files {
	local($dir) = @_;
	my $tmp, $size;

if (!$verbose) {
	print "Starting... $dir\n";
}
	opendir(DIR, $dir) || print "No dice $! ($dir)" ;
	$dirs++;
	local(@filenames) = grep(!/^\.\.?$/, readdir(DIR));
	closedir(DIR);
	if ($outFile) {
		print LIST "\n$dir\n";
	}
if (!$only_dir) {
	for $tmp (@filenames) {
		if (!-d $dir.$tmp) {
#($dev,$ino,$mode,$nlink,$uid,$gid,$rdev,$size,$atime,$mtime,$ctime,$blsize,$blocks)=stat $dir.$tmp;
@foo=stat $dir.$tmp;
$size=$foo[7];
$mtime=$foo[9];
			$fs++;
			$sizes=$size;
			$sizeTot=$sizeTot+$sizes;

		if ($size => 1000)  {
			$size=$size/1000;
			#$size=$sizes;
			$Psize=commify($size) ." KB" if ($sizes >= 1000);
			$Psize= ">".commify($size) ." KB" if ($sizes <= 999);
		}else{
			$size="$size Bytes";
		}

			if (!$verbose) {
				print "doing... $tmp\n";
			}
			if ($outFile) {
					$mtime = gmtime($mtime);
				if ($doSize && $doMod) {
					print LIST "\t".$tmp."  ($Psize) (Last Modified: $mtime)\n";
				}elsif ($doSize && !$doMod) {
					print LIST "\t".$tmp."  ($Psize)\n";
				}elsif (!$doSize && $doMod) {
					print LIST "\t".$tmp."  (Last Modified: $mtime)\n";
				}else{
					print LIST "\t".$tmp."\n";
				}
			}
		}
	}
}#only_dir
	for $tmp (@filenames) {
		if (-d $dir.$tmp) {
			&get_the_files($dir.$tmp."\\");
		}
	}

}
if ($outFile) {
	#if (length($sizeTot) >= 6) {
	#	$k = "MB";
	#}else{
	#	$k = "KB";
	#}
	$k = " Bytes";
	print LIST "\n\n Files: $fs\n Directories: $dirs\n Size: ". commify($sizeTot). $k . "\n";
	close LIST;
}

sub commify {
        local($_) = shift;
        $_=sprintf("%.0f",$_); 
        1 while s/^(-?\d+)(\d{3})/$1,$2/;
        return $_;
     }
sub help {
	print<<EOF;
Usage: $0 Directory\n
Options:
   -d		Display only directories
   -v		Display progress
   -o		Output File
   -s		Display file size in output file
   -m		Display files last modified time/date
   -l 		Writes a label to top of outfile
   -h		Display this help

Example: DirTree.pl c:\\windows -o c:\\temp\\DirTree.txt -[dvsm] -l "<label>"
EOF

}

#End Perl