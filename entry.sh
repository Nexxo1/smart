#!/bin/bash
sed -i 's/MAILHUB/'"$MAILHUB"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/MAILFROM/'"$MAILFROM"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/MAILUSER/'"$MAILUSER"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/MAILPASS/'"$MAILPASS"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/HOSTNAME/'"$HOSTNAME"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/DOMAIN/'"$DOMAIN"'/g' /etc/ssmtp/ssmtp.conf

/usr/sbin/smartd --debug