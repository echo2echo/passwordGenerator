#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

# Uncomment line below if using as local $ARGV script
use CGI;

use Crypt::RandPasswd;


# Uncomment $ARGV line below and comment the two $cgi lines below that to run \
# as a local script instead of cgi script

#my $in = $ARGV[0];
my $cgi = CGI->new;
my $in = $cgi->param("length");

my $word;
my $minlen = $in;
my $maxlen = $in;
my $hyphenated;

( $word, $hyphenated ) = Crypt::RandPasswd->word( $minlen, $maxlen );
$word = Crypt::RandPasswd->chars( $minlen, $maxlen );
$word =~ s/<//;

# Also remove following line if runnug as local script
print "Content-type: text/html\n\n";
print "$word";
