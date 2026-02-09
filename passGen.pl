#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

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
#$word = Crypt::RandPasswd->word( $minlen, $maxlen );


print "Content-type: text/html\n\n";

#print "Content-type: text/html\n\n\n":

print "$word";
