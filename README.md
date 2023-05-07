# Введение в DevOps

##  Сопов Андрей первое задание 


## Домашнее задание по лекции "Компьютерные сети (лекция 3)"


### 1. Подключитесь к публичному маршрутизатору в интернет. Найдите маршрут к вашему публичному IP.

![image](https://user-images.githubusercontent.com/5323690/236673416-2f346887-cb93-46e7-aeab-694b5b876d2e.png)

route-views>show bgp 185.165.163.127

![image](https://user-images.githubusercontent.com/5323690/236673451-f8fdafad-42c5-4608-a6f0-b4d33d09c48f.png)

### 2. Создайте dummy0 интерфейс в Ubuntu. Добавьте несколько статических маршрутов. Проверьте таблицу маршрутизации.

![image](https://user-images.githubusercontent.com/5323690/236673968-4c6f8bd4-e3bc-43d4-859e-3cd23005f4e9.png)



### 3. Проверьте открытые TCP порты в Ubuntu, какие протоколы и приложения используют эти порты? Приведите несколько примеров.

![image](https://user-images.githubusercontent.com/5323690/236673981-b1ef59ea-d740-426f-aef6-821d352984c6.png)

systemd-resolve  использует порт 53

netdata использует порт 8125

### 4. Проверьте используемые UDP сокеты в Ubuntu, какие протоколы и приложения используют эти порты?

![image](https://user-images.githubusercontent.com/5323690/236674299-e92533e9-efd5-4528-abaa-4dfa631963fb.png)

firefox использует порт 44854
