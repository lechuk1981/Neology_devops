# Введение в DevOps

##  Сопов Андрей первое задание 


## Операционные системы (лекция 2)


1. Установил, поместил в автозагрузку
   ![image](https://user-images.githubusercontent.com/5323690/172236478-df63cacb-1636-4692-bd67-f45765c44ce7.png)
2.  
   node_cpu_seconds_total{cpu="1",mode="system"} 8.29
   node_cpu_seconds_total{cpu="1",mode="user"} 8.68
   node_scrape_collector_duration_seconds{collector="cpu"} 0.00013979
   node_scrape_collector_duration_seconds{collector="cpufreq"} 2.8167e-05
   
   node_memory_Active_bytes 3.82963712e+08
   node_memory_Cached_bytes 8.58750976e+08
   process_virtual_memory_bytes 7.23099648e+08
   node_disk_io_time_seconds_total{device="sda"} 15.816
   node_disk_io_time_seconds_total{device="sr0"} 0.024
   node_disk_read_bytes_total{device="sda"} 7.28470016e+08
   node_disk_read_bytes_total{device="sr0"} 2560

   node_network_mtu_bytes{device="eth0"} 1500
   node_network_mtu_bytes{device="lo"} 65536
   node_network_info{address="00:00:00:00:00:00",broadcast="00:00:00:00:00:00",device="lo",duplex="",ifalias="",operstate="unknown"} 1
   node_network_info{address="00:1c:42:4f:07:53",broadcast="ff:ff:ff:ff:ff:ff",device="eth0",duplex="unknown",ifalias="",operstate="up"} 1
   
   ![image](https://user-images.githubusercontent.com/5323690/173388827-6dff82ef-44fa-40a2-9114-45a2803aca99.png)
   
   
   Дополнительные опции в службу будут добавляться в unit файле в параметре ExecStart, например
   
   ExecStart=/usr/local/bin/node_exporter --collector.netstat


3. Проброс делал средствами parallels ![image](https://user-images.githubusercontent.com/5323690/172240583-343c620f-489b-4fa0-bff7-02d4d7f487bf.png)

 ![image](https://user-images.githubusercontent.com/5323690/172240207-d965bbae-74d4-4e53-b0e4-660f5a35597d.png)
4. Да можно ![image](https://user-images.githubusercontent.com/5323690/172240972-478d7fa9-12a5-4325-a3d0-be33110f4253.png)
5. ![image](https://user-images.githubusercontent.com/5323690/172241908-8c7648d2-75d4-4f3c-bce6-53fbdd26b4fd.png)
   Лимит открытых файловых дискрипторов которое задается через sysctl
   
   ![image](https://user-images.githubusercontent.com/5323690/172243051-60251504-8cdb-46da-a9bb-935aafd47ab3.png)
Мягкий и жесткий лимит. Жесткий лимит не больше чем ограничение в fs.nr_open

6. ![image](https://user-images.githubusercontent.com/5323690/173390190-3a11e45d-79b1-4a44-b532-67fb7c82c8d1.png)
   ![image](https://user-images.githubusercontent.com/5323690/173390052-cf9b38e5-3cc7-40c8-96ea-1d9f950354a7.png)
   ![image](https://user-images.githubusercontent.com/5323690/173390099-d3180c98-f58c-40ed-93f7-068e57c47646.png)

 
7. Это так называемая fork bomb , функция которая вызывается рекурсивно.
   Нам помог cgroup ![image](https://user-images.githubusercontent.com/5323690/173391716-f54ac419-679c-4e9c-8bf2-28cfae662d81.png)
   Настроить лимит процессов можно в 
   ![image](https://user-images.githubusercontent.com/5323690/173392427-a8cf210b-c41b-4f17-9a6a-2f3bf3a375bf.png)
   
или прописать ulimit -u 

![image](https://user-images.githubusercontent.com/5323690/173393230-1d6da0b0-e58e-49a3-820c-84ab0e736f6d.png)


