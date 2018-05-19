rc-update add sshd
touch /run/openrc/softlevel
/etc/init.d/sshd start
echo "ssh started"
