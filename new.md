
### Домашнее задание к занятию "5.3. Введение. Экосистема. Архитектура. Жизненный цикл Docker контейнера"

#### Задача 1

Сценарий выполнения задачи:

- создайте свой репозиторий на https://hub.docker.com;
- выберете любой образ, который содержит веб-сервер Nginx;
- создайте свой fork образа;
- реализуйте функциональность:
запуск веб-сервера в фоне с индекс-страницей, содержащей HTML-код ниже:
```
<html>
<head>
Hey, Netology
</head>
<body>
<h1>I’m DevOps Engineer!</h1>
</body>
</html>
```
Опубликуйте созданный форк в своем репозитории и предоставьте ответ в виде ссылки на https://hub.docker.com/username_repo.

#### Созданный форк [https://hub.docker.com/r/lechuk1981/nginx-devops](https://hub.docker.com/layers/lechuk1981/nginx-devops/latest/images/sha256-ced759fb405d7017e14475766758e6eaa2437feb67c5d94b947e4e44831237df?context=explore)

```

root@zabbix:/tmp/docker# docker run --rm -d --name web -p 8082:80 lechuk1981/nginx-devops
144040f079e03dce497503e46b975de562c3ef34ccd09945b2777e80f39d0902
root@zabbix:/tmp/docker# curl 127.0.0.1:8082
<html><head>Hey, Netology</head><body><h1>I am DevOps Engineer!</h1></body></html>
root@zabbix:/tmp/docker#

```


#### Задача 2

Посмотрите на сценарий ниже и ответьте на вопрос:
"Подходит ли в этом сценарии использование Docker контейнеров или лучше подойдет виртуальная машина, физическая машина? Может быть возможны разные варианты?"

Детально опишите и обоснуйте свой выбор.

--

Сценарий:

- Высоконагруженное монолитное java веб-приложение;
```
Физический сервер или VM предпочтительнее, т.к. монолитное и на микросервисы сложно разбить. К тому же высоконагруженное - 
необходим прямой доступ к ресурсам.
```
- Nodejs веб-приложение;
```
Подойдет Docker, так как это веб-платформа с подключаемыми внешними библиотеками
```
- Мобильное приложение c версиями для Android и iOS;
```
Необходим GUI, так что подойдет виртуалка.
```
- Шина данных на базе Apache Kafka;
```
Если среда рабочая и полнота данных критична, то лучше использовать VM; если среда тестовая и потеря данных некритична,
можно использовать Docker.
```
- Elasticsearch кластер для реализации логирования продуктивного веб-приложения - три ноды elasticsearch, два logstash и
две ноды kibana;
```
Elasticsearvh лучше на VM, отказоустойчивость решается на уровне кластера, kibana и logstash можно вынести в Docker.
```
- Мониторинг-стек на базе Prometheus и Grafana;
```
Подойдет Docker, так как данные не хранятся, и масштабировать легко.
```
- MongoDB, как основное хранилище данных для java-приложения;
```
Зависит от нагрузки на DB. Если нагрузка большая, то физический сервер, если нет – VM.
```
- Gitlab сервер для реализации CI/CD процессов и приватный (закрытый) Docker Registry.
```
Подойдет VM для DB и фалового хранилища, Docker для сервисов
```

#### Задача 3

- Запустите первый контейнер из образа ***centos*** c любым тэгом в фоновом режиме, подключив папку ```/data``` из текущей рабочей директории на хостовой машине в ```/data``` контейнера;
- Запустите второй контейнер из образа ***debian*** в фоновом режиме, подключив папку ```/data``` из текущей рабочей директории на хостовой машине в ```/data``` контейнера;
- Подключитесь к первому контейнеру с помощью ```docker exec``` и создайте текстовый файл любого содержания в ```/data```;
- Добавьте еще один файл в папку ```/data``` на хостовой машине;
- Подключитесь во второй контейнер и отобразите листинг и содержание файлов в ```/data``` контейнера.

```
vagrant@server1:~$ docker run -it --rm -d --name centos -v $(pwd)/data:/data centos:latest
Unable to find image 'centos:latest' locally
latest: Pulling from library/centos
52f9ef134af7: Pull complete
Digest: sha256:a27fd8080b517143cbbbab9dfb7c8571c40d67d534bbdee55bd6c473f432b177
Status: Downloaded newer image for centos:latest
644cbde6aba33ce6aa8e1d2ce579ce411fd58b7974fc6f8b6f5acb0a5c1236d4

vagrant@server1:~$ docker run -it --rm -d --name debian -v $(pwd)/data:/data debian:latest
Unable to find image 'debian:latest' locally
latest: Pulling from library/debian
94a23d3cb5be: Pull complete
Digest: sha256:2906804d2a64e8a13a434a1a127fe3f6a28bf7cf3696be4223b06276f32f1f2d
Status: Downloaded newer image for debian:latest
2b1f3290f6dc56f98f4546f4fccf73267a0baab1e382625f0955cffba40a9916
```
```
vagrant@server1:~$ docker exec -it centos bash
[root@644cbde6aba3 /]# echo "This file is written to docker CentOS" >> /data/centos.txt
[root@644cbde6aba3 /]# exit
exit
```
```
vagrant@server1:~$ sudo su
root@server1:/home/vagrant# echo "This file is written to host" >> data/host.txt
```
```
vagrant@server1:~$ docker exec -it debian bash
root@2b1f3290f6dc:/# ls data/
centos.txt  host.txt
```

#### Задача 4 (*)

Воспроизвести практическую часть лекции самостоятельно.

Соберите Docker образ с Ansible, загрузите на Docker Hub и пришлите ссылку вместе с остальными ответами к задачам.

https://hub.docker.com/repository/docker/podkovka/devops-ansible
