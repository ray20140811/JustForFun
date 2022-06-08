# Debian

## Software 

### How to install SSH on debian?

    `sudo apt install openssh-server`
    
    `sudo /etc/init.d/ssh start`

    `sudo /etc/init.d/ssh stop`

    `sudo /etc/init.d/ssh restart`

### How to upload file to server by using SCP?

    `scp xxx.ooo ray@192.168.0.107:/home/ray`
    
### How to copy file from server to local by using SCP?

    `scp ray@192.168.0.107:/home/ray/source-filename /destinaiton-file-path`

    `scp ray@192.168.1.107:/home/ray/Projects/JustForFun/LinuxDistribution/Debian/question.md /home/ray/Projects/JustForFun/LinuxDistribution/Debian/`


## System

### 執行sudo apt update出現 E: Release file for http://opensource.nchc.org.tw/debian/dists/bullseye-updates/InRelease is not valid yet 
 
出現此錯誤原因為系統時間與現實世界的時間不同。

    `ray@debian:~$ sudo apt update`
    `Hit:1 http://opensource.nchc.org.tw/debian bullseye InRelease`
    `Get:2 http://opensource.nchc.org.tw/debian bullseye-updates InRelease [39.4 kB]`
    `Hit:3 http://security.debian.org/debian-security bullseye-security InRelease   `
    `Reading package lists... Done`
    `E: Release file for http://opensource.nchc.org.tw/debian/dists/bullseye-updates/InRelease is not valid yet (invalid for another 10h 35min 58s). Updates for this repository will not be applied.`

### debian 系統同步時間

    `ray@debian:~$ sudo systemctl status ntp`

 ● ntp.service - Network Time Service
     Loaded: loaded (/lib/systemd/system/ntp.service; enabled; vendor preset: e>
     Active: failed (Result: exit-code) since Sat 2022-05-21 11:04:36 CST; 43mi>
       Docs: man:ntpd(8)
   Main PID: 4254 (code=exited, status=255/EXCEPTION)
        CPU: 687ms

May 21 11:03:26 debian ntpd[4254]: new interface(s) found: waking up resolver
May 21 11:03:29 debian ntpd[4254]: Soliciting pool server 2406:2000:fc:437::2000
May 21 11:03:44 debian ntpd[4254]: error resolving pool 1.debian.pool.ntp.org: >
May 21 11:03:44 debian ntpd[4254]: Soliciting pool server 162.159.200.123
May 21 11:03:45 debian ntpd[4254]: Soliciting pool server 103.147.22.149
May 21 11:03:45 debian ntpd[4254]: Soliciting pool server 114.35.131.27
May 21 11:03:45 debian ntpd[4254]: Soliciting pool server 103.169.212.1
May 21 11:03:46 debian ntpd[4254]: Soliciting pool server 118.163.74.161
May 21 11:04:36 debian systemd[1]: ntp.service: Main process exited, code=exite>
May 21 11:04:36 debian systemd[1]: ntp.service: Failed with result 'exit-code'.


    `ray@debian:~$ sudo systemctl restart ntp`

    `ray@debian:~$ sudo systemctl status ntp`
● ntp.service - Network Time Service
     Loaded: loaded (/lib/systemd/system/ntp.service; enabled; vendor preset: e>
     Active: active (running) since Sat 2022-05-21 11:48:45 CST; 3s ago
       Docs: man:ntpd(8)
    Process: 11030 ExecStart=/usr/lib/ntp/ntp-systemd-wrapper (code=exited, sta>
   Main PID: 11036 (ntpd)
      Tasks: 2 (limit: 4663)
     Memory: 928.0K
        CPU: 25ms
     CGroup: /system.slice/ntp.service
             └─11036 /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 117:125

May 21 11:48:45 debian ntpd[11036]: Listening on routing socket on fd #22 for i>
May 21 11:48:45 debian ntpd[11036]: kernel reports TIME_ERROR: 0x6041: Clock Un>
May 21 11:48:45 debian ntpd[11036]: kernel reports TIME_ERROR: 0x6041: Clock Un>
May 21 11:48:45 debian systemd[1]: Started Network Time Service.
May 21 11:48:46 debian ntpd[11036]: Soliciting pool server 103.169.212.1
May 21 11:48:47 debian ntpd[11036]: Soliciting pool server 162.159.200.1
May 21 11:48:47 debian ntpd[11036]: Soliciting pool server 183.177.72.202
May 21 11:48:48 debian ntpd[11036]: Soliciting pool server 183.177.72.201
May 21 11:48:48 debian ntpd[11036]: Soliciting pool server 122.117.253.246
May 21 11:48:48 debian ntpd[11036]: Soliciting pool server 220.133.149.235

    `ray@debian:~$ ntpq -p`

     remote           refid      st t when poll reach   delay   offset  jitter
==============================================================================
 0.debian.pool.n .POOL.          16 p    -   64    0    0.000   +0.000   0.000
 1.debian.pool.n .POOL.          16 p    -   64    0    0.000   +0.000   0.000
 2.debian.pool.n .POOL.          16 p    -   64    0    0.000   +0.000   0.000
 3.debian.pool.n .POOL.          16 p    -   64    0    0.000   +0.000   0.000
#103.169.212.1   118.163.81.63    2 u    2   64    1   98.498  -38.209   7.404
 time.cloudflare 10.15.13.87      3 u    2   64    1  202.586  -41.766   7.709
+t2.time.tw1.yah 106.10.133.18    2 u    1   64    1   80.950  -16.844  18.913
+t1.time.tw1.yah 119.160.254.231  3 u    1   64    1   56.648  -32.092  19.306
+static.home.twn 118.163.81.63    2 u    1   64    1   57.508  -29.341  19.259
+220-133-149-235 216.239.35.4     2 u    2   64    1   87.583  -16.336  19.294
+49.213.184.242  17.253.116.253   2 u    2   64    1   87.507  -17.630  18.105
+ntp.tipsy.coffe 216.239.35.4     2 u    1   64    1   99.187  -50.995  14.859
#103.147.22.149  17.253.116.125   2 u    -   64    1  319.205  -33.473   6.825
+1-34-13-89.hine 118.163.81.63    2 u    -   64    1   35.677  -40.759  12.098
+111.235.248.121 .PPS.            1 u    2   64    1   51.467  -29.112  20.780
#114-35-131-27.h 211.22.103.157   4 u    2   64    1   58.324  -30.120  19.550
#123.241.7.203 ( 71.79.79.71      2 u    2   64    1   65.114  -19.004  18.951
+b335.cxs.pw     216.239.35.0     2 u    1   64    1   35.655  -39.455  12.185
*bbr.cxs.pw      118.163.81.63    2 u    1   64    1   35.786  -38.181  11.392
#beetjevreemd.nl .PPS0.           1 u    2   64    1  249.144  -32.203   5.052
#87.120.166.8    .GPSs.           1 u    1   64    1  338.643  -43.889  98.985

    `ray@debian:~$ sudo apt update`
Hit:1 http://opensource.nchc.org.tw/debian bullseye InRelease
Get:2 http://opensource.nchc.org.tw/debian bullseye-updates InRelease [39.4 kB]
Hit:3 http://security.debian.org/debian-security bullseye-security InRelease
Fetched 39.4 kB in 1s (66.5 kB/s)                         
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.

