# ShadowsocksR and automatical configurations

## configurations
First clone this project:
```
git clone https://github.com/ericwtlin/ssr.git
```
Similar to config_sample.json, you need to make configurations for your ShadowsocksR and save the configurations file as config.json

## Running as a client

### Windows
There are GUI clients for Windows. Please refer to: https://dcamero.azurewebsites.net/shadowsocksr.html


### Mac
You can download GUI client for Mac OS from:
https://github.com/qinyuhang/ShadowsocksX-NG-R/releases

### Linux (and Mac OS)
In consideration of no GUI clients available, I offer two shell scripts to automatically run ShadowsocksR.

Excuting the following command:
```
bash local.sh
```


If you want to start the ShadowsocksR when your system start up, please make the following command excuted as soon as the system starts up:
```
bash /your_absolute_path_to_ssr/local.sh /your_absolute_path_to_ssr/config.json
```

For Linux users, you can add the above command to /etc/rc.local.
For mac Users, you can follow: http://liuley.cn/%E6%8A%80%E6%9C%AF/2016/03/25/autorun-shellscript-when-start-mac.html

## Running as server
Excuting the following command:
```
bash start_server.sh
```

If you want to start the ShadowsocksR when your system start up, please make the following command excuted as soon as the system starts up:
```
bash /your_absolute_path_to_ssr/start_server.sh /your_absolute_path_to_ssr/config.json
```


## Reference
./ShadowsocksR is downloaded from https://github.com/shadowsocksrr/shadowsocksr
