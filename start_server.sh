#!/bin/bash

count=`ps -ef |grep "shadowsocks/server.py" |grep -v "grep" |wc -l`
if [ $count -eq 0 ] 
then
    # automatically kill the existing server.py
    sudo kill `ps -ef | grep "shadowsocks/server.py" | grep -v "grep" | awk "{print $2}"`
    echo "The existing server.py has been killed. Restart now."
fi

if [ $# -eq 0 ]
then
    nohup python ./shadowsocksR/shadowsocks/server.py -c ./config.json >/dev/null 2>&1 &
else
    nohup python ./shadowsocksR/shadowsocks/server.py -c $1 >/dev/null 2>&1 &
fi  
echo "ShadowsocksR started."
