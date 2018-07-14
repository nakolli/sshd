FROM ubuntu

MAINTAINER kollinaveen@hotmail.com

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir =p /var/run/sshd

CMD /usr/sbin/sshd -D

WORKDIR /tmp
ENV foobar "Hello world"

EXPOSE 2222
