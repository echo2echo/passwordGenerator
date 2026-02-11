# passwordGenerator

Perl CGI Script to generate password.

Try the following URL.

Change the length parameter in the URL below for how long you would like your password to be.

Systems should usually accept passwords up to 64 characters.


https://joelrader.net/cgi-bin/passgen/?length=64

Or cURL...

$ curl https://joelrader.net/cgi-bin/passgen/?length=64


If running this code on your own machine you may need to install Crypt::RandPasswd with cpan ( cpan -i Crypt::RandPasswd ) or 
( cpanm  Crypt::RandPasswd ) and the CGI perl module too.

And permissions ...

$ chmod 755 test.pl

& and < characters are removed from rendered passwords.

On my machine, the script will hang if the length parameter is somewhere over 300.  If you try a length over 100 you'll get a friendly error message.
Your mileage may vary depending on the hardware you have serving this script.
