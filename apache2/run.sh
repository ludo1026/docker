#!/bin/bash
/usr/sbin/sshd

/etc/init.d/apache2 start

sleep 10

tail -f /var/log/apache2/error.log
