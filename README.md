# Введение в DevOps

##  Сопов Андрей первое задание 


## Работа в терминале (лекция 2)

1. Не совсем понял что значит тип комманды в данном случае. Я так понимаю что комманда cd встроена в оболочку и по сути является функцией, которая получает на вход некоторые аргументы и далее в зависимости от этих аргументов отрабатывает скрипт. 

2. В этом случае результаты поиска преренаправляются на вход комманды wc которая с ключом -l выводит количество строк. grep может тоже отображать тоже самое с ключои -c ![image](https://user-images.githubusercontent.com/5323690/166488786-88dd0578-e371-484f-aa31-b7723503e1c2.png)

3. Это процесс systemd ![image](https://user-images.githubusercontent.com/5323690/166491793-fb120729-04de-40b7-aac8-738e92adef8c.png)

4. ![image](https://user-images.githubusercontent.com/5323690/166502412-71956c0f-f56e-4748-b486-9dc9e55994e4.png)
 
5. ![image](https://user-images.githubusercontent.com/5323690/166503802-8db5fece-23ce-4608-86f8-d89bc5ce0387.png)

6. Смог наблюдать вывод данный в tty . Консоль на виртуалке и подключение по ssh 

![image](https://user-images.githubusercontent.com/5323690/166951537-6d60675b-7498-429e-ba56-e78847d7c059.png)

7. Мы создали новый файл дескриптор и направили в него stdout. 

8. Я так понимаю что нужно создать пару новых дескрипторов. Перенаправляем 5<&2 , 6<&1 , а потом в 1 направляем stderr Из 5 1<&5
   только я не совсем понял как проверить 
   ![image](https://user-images.githubusercontent.com/5323690/167081475-123ea1a6-eb60-4974-86bf-7a5ddf0a11cb.png)

9. Выведется массив переменных среды окружения в конкретной сессии.  Можно вольпользоваться командой env

10. /proc/<PID>/cmdline  read-only файл с агументами командной строки. /proc/<PID>/exe содержит символическую ссыслу содержащую фактический путь к выполняемой команде

11. Я так понимаю SSE 4.2 ![image](https://user-images.githubusercontent.com/5323690/167086284-944d9331-d813-45e6-8fcd-0f33a376e3c4.png)

12. Не совсем понял что нужно сделать. У меня вот такая штука выводится 
 ![image](https://user-images.githubusercontent.com/5323690/167086864-a313b6c3-662c-4d25-b9be-b36a97f213a3.png)

13. С параметрами screen -s /dev/pts смог печатать в другом окне териманала

14. tee читает данные из стандартного инпута и записывает в стандартный оутпут и файлы. Вариант с sudo echo не подходит, так как с рутовыми правами мы запускаем echo. Во втором случае с рутовыми правами запускаем tee, поэтому и получаем доступ
