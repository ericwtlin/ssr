#sudo -u nobody /home/eric-lin/software/shadowsocks-go/shadowsocks-local-linux64-1.1.4 -c /home/eric-lin/software/shadowsocks-go/config.json
if [ $# -eq 0 ]
then
    sudo -u nobody python ./shadowsocksR/shadowsocks/local.py -c ./config.json >/dev/null 2>&1 &
else
    sudo -u nobody python ./shadowsocksR/shadowsocks/local.py -c $1 >/dev/null 2>&1 &
fi  
