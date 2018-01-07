# ShadowsocksR and automatical configurations

## ShadowsocksR
./ShadowsocksR is downloaded from https://github.com/shadowsocksrr/shadowsocksr


## configurations
Similar to config_sample.json, you need to make configurations for your ShadowsocksR and save the configurations file as config.json


## Running as a client

### Windows and Android
There are GUI clients for Windows and Android. Please refer to: https://dcamero.azurewebsites.net/shadowsocksr.html#linux


### Automatical shell scripts for Linux and Mac users
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

