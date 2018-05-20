FROM phusion/baseimage

RUN apt-get update && apt-get install -y --no-install-recommends iputils-ping netbase net-tools python3 vim wget sudo curl python3-yaml python3-jinja2 python3-paramiko python3-crypto && apt-get autoclean
RUN cd /usr/local/bin \
	&& ln -s idle3 idle \
	&& ln -s pydoc3 pydoc \
	&& ln -s python3 python \
	&& ln -s python3-config python-config

#Enable SSH
RUN rm -f /etc/service/sshd/down
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

COPY configs/id_rsa.pub /root/.ssh/authorized_keys
COPY ["configs/.vimrc", "configs/.profile", "./root/"]
COPY configs/start.sh /root/start.sh

WORKDIR /root

EXPOSE 22

CMD sh /root/start.sh

