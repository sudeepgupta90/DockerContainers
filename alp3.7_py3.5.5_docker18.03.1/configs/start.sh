#!/bin/ash

rc-update add sshd
#touch /run/openrc/softlevel
/etc/init.d/sshd start
echo "ssh started"
#while true;do script -q -c "/bin/ash -l" /dev/null ; done && \
#script -q -c "/bin/ash -l" /dev/null && \
#script -q -c "tail -f /dev/null"
