# Введение в DevOps

##  Сопов Андрей первое задание 


## Домашнее задание по лекции "Компьютерные сети (лекция 3)"


### 1. Подключитесь к публичному маршрутизатору в интернет. Найдите маршрут к вашему публичному IP.

![image](https://user-images.githubusercontent.com/5323690/236673416-2f346887-cb93-46e7-aeab-694b5b876d2e.png)

route-views>show bgp 185.165.163.127

![image](https://user-images.githubusercontent.com/5323690/236673451-f8fdafad-42c5-4608-a6f0-b4d33d09c48f.png)

### 2. Создайте dummy0 интерфейс в Ubuntu. Добавьте несколько статических маршрутов. Проверьте таблицу маршрутизации.

parallels@ubuntu-linux-20-04-desktop:~$ sudo ip link add dummy0 type dummy
[sudo] password for parallels: 
parallels@ubuntu-linux-20-04-desktop:~$ sudo ip addr add 10.0.0.1/24 dev dummy0
parallels@ubuntu-linux-20-04-desktop:~$ sudo ip link set dummy0 up
parallels@ubuntu-linux-20-04-desktop:~$ sudo ip route add to 10.10.0.0/16 via 10.0.0.1
parallels@ubuntu-linux-20-04-desktop:~$ sudo ip route add to 10.20.0.0/16 via 10.0.0.1
parallels@ubuntu-linux-20-04-desktop:~$ ip route
default via 10.211.55.1 dev eth0 proto dhcp metric 100 
10.0.0.0/24 dev dummy0 proto kernel scope link src 10.0.0.1 
10.10.0.0/16 via 10.0.0.1 dev dummy0 
10.20.0.0/16 via 10.0.0.1 dev dummy0 
10.211.55.0/24 dev eth0 proto kernel scope link src 10.211.55.3 metric 100 
169.254.0.0/16 dev eth0 scope link metric 1000 


### 3. Проверьте открытые TCP порты в Ubuntu, какие протоколы и приложения используют эти порты? Приведите несколько примеров.

parallels@ubuntu-linux-20-04-desktop:~$ sudo netstat -ntlp | grep LISTEN
tcp        0      0 0.0.0.0:19999           0.0.0.0:*               LISTEN      1301/netdata        
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN      527/systemd-resolve 
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      577/cupsd           
tcp        0      0 127.0.0.1:8125          0.0.0.0:*               LISTEN      1301/netdata        
tcp6       0      0 :::9090                 :::*                    LISTEN      601/prometheus      
tcp6       0      0 :::9100                 :::*                    LISTEN      599/prometheus-node 
tcp6       0      0 ::1:631                 :::*                    LISTEN      577/cupsd           
parallels@ubuntu-linux-20-04-desktop:~$ 

systemd-resolve  использует порт 53
netdata использует порт 8125

### 4. Проверьте используемые UDP сокеты в Ubuntu, какие протоколы и приложения используют эти порты?

