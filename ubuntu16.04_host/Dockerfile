
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends rsyslog iputils-ping netbase net-tools python3 openssh-server vim sudo curl python3-yaml python3-jinja2 python3-paramiko python3-crypto && apt-get autoclean
RUN mkdir ~/.ssh && ssh-keygen -N "" -t rsa -f ~/.ssh/id_rsa
RUN mkdir /var/run/sshd

RUN cd /usr/local/bin \
	&& ln -s idle3 idle \
	&& ln -s pydoc3 pydoc \
	&& ln -s python3 python \
	&& ln -s python3-config python-config

COPY configs/id_rsa.pub /root/.ssh/authorized_keys
COPY ["configs/.vimrc", "configs/.profile", "./root/"]
COPY configs/start.sh /root/start.sh

WORKDIR /root
EXPOSE 22 443
CMD sh /root/start.sh
# CMD ["/usr/sbin/sshd", "-D"]