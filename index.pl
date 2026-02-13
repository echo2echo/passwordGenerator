#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

use CGI;
use Crypt::RandPasswd;

my $cgi = CGI->new;
my $in = $cgi->param("length");

chomp($in);
$in =~ s/,//g;

if ( $in > 16384 ) {
	print "Content-type: text/html\n\n";
	print "$in is too large a number for this server. Try 16384 or under.\n";
	exit(0);
}

my $password;
$password = Crypt::RandPasswd->chars( $in, $in );
$password =~ s/<//g;
$password =~ s/&//g;
$password =~ s/\?//g;

print "Content-type: text/html\n\n";

print "$password\n";
