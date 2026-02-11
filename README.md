# passwordGenerator

Perl CGI Script to generate password..

Change the length parameter in the URL below for how long you would like your password to be.

Most Systems should accept passwords up to 64 characters.

FYI, A gmail pasword can be up to 100 characters long
An Outlook/Microsoft account password can be 256 charaters long.



Retrieve with a web browser...

https://joelrader.net/cgi-bin/passgen/?length=64

Or cURL...

$ curl https://joelrader.net/cgi-bin/passgen/?length=64

Or wget...

$ wget -qO - https://joelrader.net/cgi-bin/passgen/?length=64



If running this code on your own machine you may need to install Crypt::RandPasswd with cpan ( cpan -i Crypt::RandPasswd ) or 
( cpanm  Crypt::RandPasswd ) and the CGI perl module too.

On my server the script will hang if the length parameter is somewhere over 300.  If you try a length over 128 you'll get a friendly error message asking you to try again.
Your performance may vary depending on the hardware you have serving this script.
