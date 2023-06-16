# Введение в DevOps

##  Сопов Андрей первое задание 


## Домашнее задание к занятию «Использование Python для решения типовых DevOps-задач»


###Есть скрипт:

#!/usr/bin/env python3
a = 1
b = '2'
c = a + b

Какое значение будет присвоено переменной c? - Получим ошибку, так как складываем строку и целое число

<img width="471" alt="image" src="https://github.com/lechuk1981/Netology_devops/assets/5323690/97275ec8-3fcb-425c-8f29-c299936fbf18">

Как получить для переменной c значение 12? 

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/787c9382-a54b-4dc2-9b32-f355835b2224)

Как получить для переменной c значение 3? Объявить переменную b как целое число и сложить обе переменные

<img width="141" alt="image" src="https://github.com/lechuk1981/Netology_devops/assets/5323690/df0abc4a-cdf9-4b0d-882f-3af1706028ec">




### 2. Задание 2

Как можно доработать скрипт ниже, чтобы он исполнял требования вашего руководителя?

#!/usr/bin/env python3

import os

bash_command = ["cd ~/netology/sysadm-homeworks", "git status"]
result_os = os.popen(' && '.join(bash_command)).read()
is_change = False
for result in result_os.split('\n'):
    if result.find('modified') != -1:
        prepare_result = result.replace('\tmodified:   ', '')
        print(prepare_result)
        break

мой скрипт:

<img width="592" alt="image" src="https://github.com/lechuk1981/Netology_devops/assets/5323690/9f89a281-d655-4c04-ad54-f61a0e6080d2">


Добавил else так как  break выполняется после первого удачного выполненного условия
Про путь не совсем понял что нужно поменять. is_change можно убрать, эта переменная не используется

поменял путь к моей директории 

вывод в терминале 

<img width="855" alt="image" src="https://github.com/lechuk1981/Netology_devops/assets/5323690/8a99f183-c8fd-4886-bf76-da705d76e75e">

###  Задание 3

Пример с аргументом
![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/ed062b2d-8898-460f-be3e-2a3a3777e615)

Вывод 
![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/207cc707-6725-49b9-b4c6-5fdf3dc065b2)


