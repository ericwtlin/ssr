#!/bin/bash
count=`ps -ef |grep "shadowsocks/local.py" |grep -v "grep" |wc -l`
if [ $count -eq 0 ] 
then
    # automatically kill the existing local.py
    kill `ps -ef | grep "shadowsocks/local.py" | grep -v "grep" | awk "{print $2}"`
fi

if [ $# -eq 0 ]
then
    nohup python ./shadowsocksR/shadowsocks/local.py -c ./config.json >/dev/null 2>&1 &
else
    nohup python ./shadowsocksR/shadowsocks/local.py -c $1 >/dev/null 2>&1 &
fi  
