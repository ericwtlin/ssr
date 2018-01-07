#!/bin/bash
if [ $# -eq 0 ]
then
    nohup python ./shadowsocksR/shadowsocks/server.py -c ./config.json >/dev/null 2>&1 &
else
    nohup python ./shadowsocksR/shadowsocks/server.py -c $1 >/dev/null 2>&1 &
fi  
