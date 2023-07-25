
# Домашнее задание к занятию 2. «Применение принципов IaaC в работе с виртуальными машинами»


## Задача 1

- Опишите основные преимущества применения на практике IaaC-паттернов.
- Какой из принципов IaaC является основополагающим?

## Задача 2

- Чем Ansible выгодно отличается от других систем управление конфигурациями?
- Какой, на ваш взгляд, метод работы систем конфигурации более надёжный — push или pull?

## Задача 3

Установите на личный компьютер:

- [VirtualBox](https://www.virtualbox.org/),

  ```
  C:\Program Files\Oracle\VirtualBox>VBoxManage.exe --version
  7.0.10r158379
  
- [Vagrant](https://github.com/netology-code/devops-materials),
  ```
  C:\Users\asopov>vagrant version
  Installed Version: 2.3.7
  Latest Version: 2.3.7
  
- [Terraform](https://github.com/netology-code/devops-materials/blob/master/README.md),
- Ansible.
````
vagrant@vagrant:~$ ansible --version
ansible 2.9.6
````

*Приложите вывод команд установленных версий каждой из программ, оформленный в Markdown.*

## Задача 4 

Воспроизведите практическую часть лекции самостоятельно.

- Создайте виртуальную машину.
- Зайдите внутрь ВМ, убедитесь, что Docker установлен с помощью команды
```
docker ps,
```
Vagrantfile из лекции и код ansible находятся в [папке](https://github.com/netology-code/virt-homeworks/tree/virt-11/05-virt-02-iaac/src).

Примечание. Если Vagrant выдаёт ошибку:
```
URL: ["https://vagrantcloud.com/bento/ubuntu-20.04"]     
Error: The requested URL returned error: 404:
```

выполните следующие действия:

1. Скачайте с [сайта](https://app.vagrantup.com/bento/boxes/ubuntu-20.04) файл-образ "bento/ubuntu-20.04".
2. Добавьте его в список образов Vagrant: "vagrant box add bento/ubuntu-20.04 <путь к файлу>".

*Приложите скриншоты в качестве решения на эту задачу.*
