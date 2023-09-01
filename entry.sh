#!/bin/bash
sed -i 's/MAILHUB/'"$MAILHUB"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/MAILFROM/'"$MAILFROM"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/MAILUSER/'"$MAILUSER"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/MAILPASS/'"$MAILPASS"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/HOSTNAME/'"$HOSTNAME"'/g' /etc/ssmtp/ssmtp.conf
sed -i 's/DOMAIN/'"$DOMAIN"'/g' /etc/ssmtp/ssmtp.conf

sed -i 's/MAILTO/'"$MAILTO"'/g' /etc/smartd.conf

echo "$MAILTO" > /root/.forward

/usr/sbin/smartd --debug