#Download base image ubuntu 20.04
FROM ubuntu:20.04

LABEL maintainer="dave@nowhere.com"
LABEL version="1.0"
LABEL description="Simple docker image for monitoring smartd"

# Disable prompt for installation packages
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update

# installs smart
RUN apt-get install -y smartmontools ssmtp mailutils

ADD smartd.conf /etc/smartd.conf
ADD ssmtp.conf /etc/ssmtp/ssmtp.conf
ADD entry.sh /entry.sh

RUN chmod +x entry.sh

CMD /entry.sh
