# passwordGenerator

Perl CGI Script to generate password.

Try the following URL.

Change the length parameter in the URL below for how long you would like your password to be.

https://joelrader.net/cgi-bin/passgen/?length=30

Or cURL...

$ curl https://joelrader.net/cgi-bin/passgen/?length=30

If running on your own machine you may need to install Crypt::RandPasswd with cpan ( cpan -i Crypt::RandPasswd ) or 
( cpanm  Crypt::RandPasswd ) and the CGI perl module too.

And permissions too..

$ chmod 755 test.pl

& and < characters are removed from rendered password

On my machine, the script will hang if the length parameter is somewhere over 300.  If you try over a length of 200 you'll get a friendly error message. Your mileage may vary depending on the hardware you have.
