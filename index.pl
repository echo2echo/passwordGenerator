#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

use CGI;
use Crypt::RandPasswd;

my $cgi = CGI->new;
my $in = $cgi->param("length");

if ( $in > 128 ) {
	print "Content-type: text/html\n\n";
	print "$in is too large a number for this server. Try 128 or under.";
	die();
}

my $word;
my $minlen = $in;
my $maxlen = $in;
my $hyphenated;

$word = Crypt::RandPasswd->chars( $minlen, $maxlen );
$word =~ s/<//g;
$word =~ s/&//g;

print "Content-type: text/html\n\n";

print "$word\n";
