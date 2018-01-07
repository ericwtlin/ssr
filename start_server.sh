#!/bin/bash

count=`ps -ef |grep "shadowsocks/server.py" |grep -v "grep" |wc -l`
if [ $count -gt 0 ] 
then
    # automatically kill the existing server.py
    for pid in $(ps -ef | grep "shadowsocks/server.py" | grep -v "grep" | awk '{print $2}'); do
	echo "Kill $pid"
        sudo kill $pid
    done
    echo "The existing server.py has been killed. Restart now."
fi

if [ $# -eq 0 ]
then
    nohup python ./shadowsocksR/shadowsocks/server.py -c ./config.json >/dev/null 2>&1 &
else
    nohup python ./shadowsocksR/shadowsocks/server.py -c $1 >/dev/null 2>&1 &
fi  
echo "ShadowsocksR started."
