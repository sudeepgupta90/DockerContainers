
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends rsyslog iputils-ping netbase net-tools python3 openssh-server vim sudo curl python3-yaml python3-jinja2 python3-paramiko python3-crypto util-linux && apt-get autoclean
#RUN mkdir ~/.ssh && ssh-keygen -N "" -t rsa -f ~/.ssh/id_rsa
RUN mkdir /var/run/sshd

RUN cd /usr/bin \
	&& ln -s idle3 idle \
	&& ln -s pydoc3 pydoc \
	&& ln -s python3 python \
	&& ln -s python3-config python-config

#copy ssh keys and authorised host
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh
WORKDIR /root
COPY ["configs/id_rsa", "configs/id_rsa.pub", "/root/.ssh/"]
COPY configs/id_rsa.pub /root/.ssh/authorized_keys
COPY ["configs/.vimrc", "configs/.profile", "/root/"]
RUN chmod 644 /root/.ssh/id_rsa.pub && chmod 600 /root/.ssh/id_rsa

COPY configs/start.sh /root/start.sh

EXPOSE 22

CMD sh /root/start.sh
# CMD ["/usr/sbin/sshd", "-D"]
