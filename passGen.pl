#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

use CGI;

use Crypt::RandPasswd;

#my $in = $ARGV[0];
my $cgi = CGI->new;
my $in = $cgi->param("length");

if ( $in > 300 ) {
	print "Content-type: text/html\n\n";
	print "Too large a number for this machine ";
	die();
}

my $word;
my $minlen = $in;
my $maxlen = $in;
my $hyphenated;

( $word, $hyphenated ) = Crypt::RandPasswd->word( $minlen, $maxlen );
$word = Crypt::RandPasswd->chars( $minlen, $maxlen );
$word =~ s/<//g;
$word =~ s/&//g;

print "Content-type: text/html\n\n";

print "$word\n";
