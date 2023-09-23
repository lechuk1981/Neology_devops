# Домашнее задание к занятию 4. «Оркестрация группой Docker-контейнеров на примере Docker Compose»

## Задача 1  ## Задача 2

**2.1.** Создайте вашу первую виртуальную машину в YandexCloud с помощью web-интерфейса YandexCloud. 

Создайте собственный образ любой операционной системы (например, debian-11) с помощью Packer ([инструкция для установки плагина yandex-cloud](https://cloud.yandex.ru/docs/tutorials/infrastructure-management/packer-quickstart)).

На скрине две виртуалке, одна через консоль вторая через веб интерфейс

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/045a4e28-28d1-4dad-8282-19794b2cb18d)

## Задача 3

С помощью Ansible и Docker Compose разверните на виртуальной машине из предыдущего задания систему мониторинга на основе Prometheus/Grafana.

...

medved@devops:~$ sudo docker ps
CONTAINER ID   IMAGE                              COMMAND                  CREATED              STATUS                          PORTS      NAMES
a37975af8f97   stefanprodan/caddy                 "/sbin/tini -- caddy…"   About a minute ago   Restarting (2) 44 seconds ago              caddy
122b27ffbe69   prom/node-exporter:v0.18.1         "/bin/node_exporter …"   About a minute ago   Up About a minute               9100/tcp   nodeexporter
95e6e91d74e5   prom/alertmanager:v0.20.0          "/bin/alertmanager -…"   About a minute ago   Restarting (1) 42 seconds ago              alertmanager
3814ac536594   gcr.io/cadvisor/cadvisor:v0.47.0   "/usr/bin/cadvisor -…"   About a minute ago   Up About a minute (healthy)     8080/tcp   cadvisor
97a0acd3d985   grafana/grafana:7.4.2              "/run.sh"                About a minute ago   Up About a minute               3000/tcp   grafana
ee0066963076   prom/prometheus:v2.17.1            "/bin/prometheus --c…"   About a minute ago   Restarting (1) 41 seconds ago              prometheus
4039d028661b   prom/pushgateway:v1.2.0            "/bin/pushgateway"       About a minute ago   Up About a minute               9091/tcp   pushgateway

...
