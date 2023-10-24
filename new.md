# Домашнее задание к занятию 2. «SQL»

## Введение

Перед выполнением задания вы можете ознакомиться с 
[дополнительными материалами](https://github.com/netology-code/virt-homeworks/blob/virt-11/additional/README.md).

## Задача 1

Используя Docker, поднимите инстанс PostgreSQL (версию 12) c 2 volume, 
в который будут складываться данные БД и бэкапы.

Приведите получившуюся команду или docker-compose-манифест.

'''
andreysopov@MacBook-Air-Andrey Docker_pos % docker-compose -f docker-compose.yml up -d
[+] Running 14/14
 ✔ db 13 layers [⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]      0B/0B      Pulled                                                                                                                                     24.5s 
   ✔ 1bc163a14ea6 Pull complete                                                                                                                                                             8.7s 
   ✔ fe7eaee44872 Pull complete                                                                                                                                                             0.6s 
   ✔ e13ff0d3a049 Pull complete                                                                                                                                                             2.3s 
   ✔ 4d16fa05eefe Pull complete                                                                                                                                                             2.0s 
   ✔ d86be5429105 Pull complete                                                                                                                                                             4.4s 
   ✔ 8b9908c218b1 Pull complete                                                                                                                                                             3.4s 
   ✔ 07683d534ecb Pull complete                                                                                                                                                             4.1s 
   ✔ 3c5194879a02 Pull complete                                                                                                                                                             4.7s 
   ✔ 4ebf740ac389 Pull complete                                                                                                                                                            20.0s 
   ✔ 0640065a7f73 Pull complete                                                                                                                                                             5.6s 
   ✔ 0c9e0a841cb0 Pull complete                                                                                                                                                             6.2s 
   ✔ a076c6e0becb Pull complete                                                                                                                                                             7.0s 
   ✔ e65b20fc762c Pull complete                                                                                                                                                             7.6s 
[+] Building 0.0s (0/0)                                                                                                                                                     docker:desktop-linux
[+] Running 3/4
 ✔ Network docker_pos_default   Created                                                                                                                                                     0.0s 
 ✔ Volume "docker_pos_data1"    Created                                                                                                                                                     0.0s 
 ✔ Volume "docker_pos_data2"    Created                                                                                                                                                     0.0s 
 ⠙ Container postgres_netology  Creating                                                                                                                                                    0.1s 
Error response from daemon: invalid mount config for type "volume": invalid mount path: 'data1' mount path must be absolute
andreysopov@MacBook-Air-Andrey Docker_pos % vi docker-compose.yml 
andreysopov@MacBook-Air-Andrey Docker_pos % docker-compose -f docker-compose.yml up -d
[+] Building 0.0s (0/0)                                                                                                                                                     docker:desktop-linux
[+] Running 1/1
 ✔ Container postgres_netology  Started                                                                                                                                                     0.1s 
andreysopov@MacBook-Air-Andrey Docker_pos % docker ps
CONTAINER ID   IMAGE         COMMAND                  CREATED         STATUS         PORTS                     NAMES
447054ffe87d   postgres:12   "docker-entrypoint.s…"   8 seconds ago   Up 8 seconds   0.0.0.0:54320->5432/tcp   postgres_netology
andreysopov@MacBook-Air-Andrey Docker_pos % 

'''


## Задача 2

В БД из задачи 1: 

- создайте пользователя test-admin-user и БД test_db;
- в БД test_db создайте таблицу orders и clients (спeцификация таблиц ниже);
- предоставьте привилегии на все операции пользователю test-admin-user на таблицы БД test_db;
- создайте пользователя test-simple-user;
- предоставьте пользователю test-simple-user права на SELECT/INSERT/UPDATE/DELETE этих таблиц БД test_db.

Таблица orders:

- id (serial primary key);
- наименование (string);
- цена (integer).

Таблица clients:

- id (serial primary key);
- фамилия (string);
- страна проживания (string, index);
- заказ (foreign key orders).

Приведите:

- итоговый список БД после выполнения пунктов выше;
- описание таблиц (describe);
- SQL-запрос для выдачи списка пользователей с правами над таблицами test_db;
- список пользователей с правами над таблицами test_db.

## Задача 3

Используя SQL-синтаксис, наполните таблицы следующими тестовыми данными:

Таблица orders

|Наименование|цена|
|------------|----|
|Шоколад| 10 |
|Принтер| 3000 |
|Книга| 500 |
|Монитор| 7000|
|Гитара| 4000|

Таблица clients

|ФИО|Страна проживания|
|------------|----|
|Иванов Иван Иванович| USA |
|Петров Петр Петрович| Canada |
|Иоганн Себастьян Бах| Japan |
|Ронни Джеймс Дио| Russia|
|Ritchie Blackmore| Russia|

Используя SQL-синтаксис:
- вычислите количество записей для каждой таблицы.

Приведите в ответе:

    - запросы,
    - результаты их выполнения.

## Задача 4

Часть пользователей из таблицы clients решили оформить заказы из таблицы orders.

Используя foreign keys, свяжите записи из таблиц, согласно таблице:

|ФИО|Заказ|
|------------|----|
|Иванов Иван Иванович| Книга |
|Петров Петр Петрович| Монитор |
|Иоганн Себастьян Бах| Гитара |

Приведите SQL-запросы для выполнения этих операций.

Приведите SQL-запрос для выдачи всех пользователей, которые совершили заказ, а также вывод этого запроса.
 
Подсказка: используйте директиву `UPDATE`.

## Задача 5

Получите полную информацию по выполнению запроса выдачи всех пользователей из задачи 4 
(используя директиву EXPLAIN).

Приведите получившийся результат и объясните, что значат полученные значения.

## Задача 6

Создайте бэкап БД test_db и поместите его в volume, предназначенный для бэкапов (см. задачу 1).

Остановите контейнер с PostgreSQL, но не удаляйте volumes.

Поднимите новый пустой контейнер с PostgreSQL.

Восстановите БД test_db в новом контейнере.

Приведите список операций, который вы применяли для бэкапа данных и восстановления. 

---

### Как cдавать задание

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---
