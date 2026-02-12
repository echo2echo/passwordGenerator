# passwordGenerator

This is a Perl CGI Script to generate a strong password...

Change the length parameter in the URL below for how long you would like your password to be.

Passwords of 16 or more characters are recommended for added security

Most Systems should accept passwords up to 64 characters.

FYI, A Gmail password can be up to 100 characters long.

An Outlook/Microsoft account password can be 256 charaters long.

Retrieve a password with a web browser...

https://joelrader.net/cgi-bin/passgen/?length=64

Or cURL...

$ curl https://joelrader.net/cgi-bin/passgen/?length=64

Or wget...

$ wget -qO - https://joelrader.net/cgi-bin/passgen/?length=64

If running the code on your own machine you may need to install Crypt::RandPasswd with cpan ( cpan -i Crypt::RandPasswd ) or 
( cpanm  Crypt::RandPasswd ) and the CGI perl module too.

If you try generating a password with a length over 2048 you'll get a friendly error message asking you to try again with a smaller length.
Your performance may vary depending on the hardware you have serving this script.
 
