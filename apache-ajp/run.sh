#!/bin/bash

# Start SSH
/usr/sbin/sshd

# Start Apache
/etc/init.d/apache2 start

# Wait 10 sec
sleep 10

# Show error log
tail -f /var/log/apache2/error.log
