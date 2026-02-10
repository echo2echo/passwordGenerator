# passwordGenerator

Perl CGI Script to generate password.

Try the following URL.

Change the length of the URL below for how long you would like your password to be, 

https://joelrader.net/cgi-bin/passgen/index.pl?length=45

Or...
$ curl https://joelrader.net/cgi-bin/passgen/index.pl?length=45


You may need to install Crypt::RandPasswd with cpan ( cpan -i Crypt::RandPasswd ) or 
( cpanm  Crypt::RandPasswd ) and the CGI perl module too.

And permissions too..
$ chmod 755 test.pl
