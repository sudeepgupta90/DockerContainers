#!/bin/sh
/etc/init.d/ssh start
echo "started ssh"
while true;do script -q -c "/bin/bash -l" /dev/null ; done && \
script -q -c "/bin/bash -l" /dev/null && \
script -q -c "tail -f /dev/null"
