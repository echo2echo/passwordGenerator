#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

use CGI;

use Crypt::RandPasswd;

my $cgi = CGI->new;
my $in = $cgi->param("length");

if ( $in > 1024 ) {
	print "Content-type: text/html\n\n";
	print "$in is too large a number for this server. Try 1024 or under.\n";
	die();
}

my $password;

$password = Crypt::RandPasswd->chars( $in, $in );
$password =~ s/<//g;
$password =~ s/&//g;

print "Content-type: text/html\n\n";

print "$password\n";
