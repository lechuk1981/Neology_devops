# Введение в DevOps

##  Сопов Андрей первое задание 


## Работа в терминале (лекция 1)

1. У меня macbook на м1 и я не смог поставить virtualbox. В итоге установил Parallels и запустил Ubuntu 20.04

2.  HISTFILESIZE  681  стройча
    HISTSIZE      692  строчка
    
    Нашел два параметра которые могут вляить на размер истории.
    Это максимальный число линий в файле историй и количество запоминвемых команд

3.  Ignoreboth не нашел такого вообще. И даже man -k ignoreboth ничего не вывел


4.  {} нашел на строке 147  
    Написано что в фигурных скобках истпользуются зарезервированные слова
    И по описанию дальше, видел что передаются параметры, условия и ограничиваю функции
    
5.  touch {0..100000} , 300000 не создается, пишет  Argument list too long
6.  Выражение заключенное в [[  ]] возвращает 0 или 1 в зависимости результата проверки
    -d file True if file exists and is a directory.
    [[ -d /tmp ]] это вырожение вернет 0 если директории нет, или 1 если есть
    
7. 
