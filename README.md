# Введение в DevOps

##  Сопов Андрей первое задание 


## Домашнее задание по лекции "Компьютерные сети (лекция 2)"


1.
![image](https://user-images.githubusercontent.com/5323690/182121788-e8533b1e-233d-4a7a-ab31-9db8f128021e.png)
В window ipconfig /all

2. Протокол Link Layer Discovery Protocol (LLDP)
   Пакет в Linux Это lldpd
   ![image](https://user-images.githubusercontent.com/5323690/182122891-f42fcc8b-8bf4-4ac2-b8e7-64cb57691716.png)
3.
Используется технология VLAN.  
Пример конфига netplan 
network:
  ethernets:
    enp1s0:
      dhcp4: false
      addresses:
        - 192.168.0.201/24
      gateway4: 192.168.0.1
      nameservers:
          addresses: [8.8.8.8, 1.1.1.1]
    vlans:
        enp1s0.100:
            id: 100
            link: enp1s0
            addresses: [192.168.100.2/24]
            
4.
0 (balance-rr) — round-robin распределение пакетов между интерфейсами. Обеспечивает отказоустойчивость и повышение пропускной способности
1 (active-backup) — в каждый момент времени работает только один интерфейс, в случае его выхода из строя, mac-адрес назначается второму интерфейсу и трафик переключается на него
2 (balance-xor) — обеспечивает балансировку между интерфейсами на основании MAC-адресов отправителя и получателя
3 (broadcast) — отправляет пакеты через все интерфейсы одновременно, обеспечивает отказоустойчивость
4 (802.3ad) — обеспечивает агрегацию на основании протокола 802.3ad
5 (balance-tlb) — в этом режиме входящий трафик приходит только на один «активный» интерфейс, исходящий же распределяется по всем интерфейсам
6 (balance-alb) — балансирует исходящий трафик как tlb, а так же входящий IPv4 трафик используя ARP

Пример конфига где используется один интерфейс, второй активируется в случае неработоспособности первого

network:
    version: 2
    renderer: networkd
    ethernets:
        ens2f0: {}
        ens2f1: {}
    bonds:
        bond0:
            dhcp4: no
            interfaces:
            - ens2f0
            - ens2f1
            parameters:
                mode: active-backup
            addresses:
                - 192.168.0.195/24
            gateway4: 192.168.0.1
            mtu: 1500
            nameservers:
                addresses:
                    - 8.8.8.8
                    
5. C 29 маской можем использовать 6 хостов. В /24 сети может быть 32 /29 подсети
   Можно взять сеть 100.64.0.0 и выбрать подсеть /26 , ограничение в 62 хоста
6. 
arp -n в ubuntu
![image](https://user-images.githubusercontent.com/5323690/182140442-fc8ba5b4-f9c1-49e1-9f0b-69423ec84253.png)
windows arp -a

![image](https://user-images.githubusercontent.com/5323690/182140649-62e9edf8-4c5d-4171-8a3f-dde16a9915e9.png)
