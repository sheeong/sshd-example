FROM ubuntu

MAINTAINER SJ Ong <thuvar20@gmail.com>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir -p /var/run/sshd
ONBUILD ADD sshd_config /etc/ssh/sshd_config

#normal use
CMD /usr/sbin/sshd -D
#ENTRYPOINT /usr/sbin/sshd

USER nobody
WORKDIR /tmp
ENV foobar "Hello World"

EXPOSE 2222
