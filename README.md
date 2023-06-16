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

Как получить для переменной c значение 3?

    ![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/fbfe9fb0-1eb5-4bec-bfba-9e26259e3c2c)





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

###  Задание 4

![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/327238ee-0543-4fc6-b27e-19073edee130)

когда адреса не помекнялись
![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/f8b95237-10a3-427c-ba8c-b2465430f062)

когда некоторые изменились
![image](https://github.com/lechuk1981/Netology_devops/assets/5323690/1bfb8764-66af-40b7-936e-3433797d80e2)




