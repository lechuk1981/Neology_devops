
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
Физический сервер или аппаратная виртуализация, т.к. монолитное и нет неоходимости в микросервисах. Высоконагруженное как раз будет использовать максимум ресурсов.
```
- Nodejs веб-приложение;
```
Docker, есть официальные сборки этой веб-платформы
```
- Мобильное приложение c версиями для Android и iOS;
```
Виртуальные машины. Так как мобильное приложение может испльзовать один и тот же сетевой интерфейс, средства аутентификации и пр.
```
- Шина данных на базе Apache Kafka;
```
Можно использовать Docker, есть уже готовые образы, а так же простота раскатки или отката версий 
```
- Elasticsearch кластер для реализации логирования продуктивного веб-приложения - три ноды elasticsearch, два logstash и
две ноды kibana;
```
Предпочтительней на VM, отказоустойчивость решается на уровне кластера
```
- Мониторинг-стек на базе Prometheus и Grafana;
```
Docker, есть образы, проще масштабировать в будущем.
```
- MongoDB, как основное хранилище данных для java-приложения;
```
Отдельный виртуальный или физический сервер
```
- Gitlab сервер для реализации CI/CD процессов и приватный (закрытый) Docker Registry.
```
Подойдет Docker так как необходима изоляция
```

#### Задача 3

- Запустите первый контейнер из образа ***centos*** c любым тэгом в фоновом режиме, подключив папку ```/data``` из текущей рабочей директории на хостовой машине в ```/data``` контейнера;
- Запустите второй контейнер из образа ***debian*** в фоновом режиме, подключив папку ```/data``` из текущей рабочей директории на хостовой машине в ```/data``` контейнера;
- Подключитесь к первому контейнеру с помощью ```docker exec``` и создайте текстовый файл любого содержания в ```/data```;
- Добавьте еще один файл в папку ```/data``` на хостовой машине;
- Подключитесь во второй контейнер и отобразите листинг и содержание файлов в ```/data``` контейнера.

```
root@zabbix:/tmp/docker# docker run -v /data:/data --name centos-container -d -t centos
Unable to find image 'centos:latest' locally
latest: Pulling from library/centos
a1d0c7532777: Pull complete
Digest: sha256:a27fd8080b517143cbbbab9dfb7c8571c40d67d534bbdee55bd6c473f432b177
Status: Downloaded newer image for centos:latest
156204753f1df701891d24f2624673c23a1a39575f35b353457104cc102a51d4


root@zabbix:/tmp/docker# docker run -v /data:/data --name debian-container -d -t debian
Unable to find image 'debian:latest' locally
latest: Pulling from library/debian
167b8a53ca45: Pull complete
Digest: sha256:eaace54a93d7b69c7c52bb8ddf9b3fcba0c106a497bc1fdbb89a6299cf945c63
Status: Downloaded newer image for debian:latest

```
```
root@zabbix:/tmp/docker# docker ps
CONTAINER ID   IMAGE                     COMMAND                  CREATED          STATUS          PORTS                  NAMES
6d6ccb51f81e   centos                    "/bin/bash"              43 seconds ago   Up 41 seconds                          debian-container
156204753f1d   centos                    "/bin/bash"              8 minutes ago    Up 8 minutes                           centos-container
144040f079e0   lechuk1981/nginx-devops   "/docker-entrypoint.…"   47 minutes ago   Up 47 minutes   0.0.0.0:8082->80/tcp   web

```
```
 docker exec centos-container /bin/bash -c "echo test>/data/test.cfg"
/tmp/docker# echo test2 > /data/test2.cfg

```
```
root@228799ebc305:/data# ls
test.cfg  test2.cfg

```

