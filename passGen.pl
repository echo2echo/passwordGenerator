#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

use CGI;

use Crypt::RandPasswd;

#my $in = $ARGV[0];
my $cgi = CGI->new;
my $in = $cgi->param("length");

#my $in = param('length');

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
