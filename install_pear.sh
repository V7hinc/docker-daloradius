#!/bin/bash
wget http://pear.php.net/go-pear.phar
/usr/bin/expect <<-EOF
spawn php go-pear.phar
expect "*to continue:"
send "\n"
expect eof
EOF
rm go-pear.phar
