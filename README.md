# passwordGenerator

This is a Perl CGI Script to generate a randomized password...

Passwords of 16 or more characters are recommended for security. This script supports up to 16,384 characters.

Most systems should accept passwords up to 64 characters.

FYI, A Gmail password can be up to 100 characters long.

An Outlook/Microsoft account password can be 256 characters long.

Change the length parameter in the URLs below for how long you would like your rendered password to be.

### Retrieve a password with a web browser...

```
https://joelrader.net/cgi-bin/passgen/?length=64
```

### Or cURL...

```
curl --silent https://joelrader.net/cgi-bin/passgen/?length=64
```

### Or wget...
```
wget --quiet -O - https://joelrader.net/cgi-bin/passgen/?length=64
```

If running the code on your own machine you may need to install Crypt::RandPasswd and the CGI modules with cpan / cpanm...

If you try generating a password with a length over 16384 you'll get a friendly error message asking you to try again with a smaller number.
