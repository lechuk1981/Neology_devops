# Домашнее задание к занятию «Языки разметки JSON и YAML»

### Цель задания

В результате выполнения задания вы:

* познакомитесь с синтаксисами JSON и YAML;
* узнаете, как преобразовать один формат в другой при помощи пары строк.

### Чеклист готовности к домашнему заданию

1. Установлена библиотека PyYAML для Python 3.

### Инструкция к заданию 

1. Скопируйте в свой .md-файл содержимое этого файла, исходники можно посмотреть [здесь](https://raw.githubusercontent.com/netology-code/sysadm-homeworks/devsys10/04-script-03-yaml/README.md).
3. Заполните недостающие части документа решением задач — заменяйте `???`, остальное в шаблоне не меняйте, чтобы не сломать форматирование текста, подсветку синтаксиса. Вместо логов можно вставить скриншоты по желанию.
4. Любые вопросы по выполнению заданий задавайте в чате учебной группы или в разделе «Вопросы по заданию» в личном кабинете.

### Дополнительные материалы

1. [Полезные ссылки для модуля «Скриптовые языки и языки разметки».](https://github.com/netology-code/sysadm-homeworks/tree/devsys10/04-script-03-yaml/additional-info)

------

## Задание 1

Мы выгрузили JSON, который получили через API-запрос к нашему сервису:

```
    { "info" : "Sample JSON output from our service\t",
        "elements" :[
            { "name" : "first",
            "type" : "server",
            "ip" : 7175 
            }
            { "name" : "second",
            "type" : "proxy",
            "ip : 71.78.22.43
            }
        ]
    }
```
  Нужно найти и исправить все ошибки, которые допускает наш сервис.

### Ваш скрипт:

```
  {
    	"info": "Sample JSON output from our service\t",
    	"elements": [{
    			"name": "first",
    			"type": "server",
    			"ip": "7175"
    		},
    		{
    			"name": "second",
    			"type": "proxy",
    			"ip": "71.78.22.43"
    		}
    	]
    }
```

---

## Задание 2

В прошлый рабочий день мы создавали скрипт, позволяющий опрашивать веб-сервисы и получать их IP. К уже реализованному функционалу нам нужно добавить возможность записи JSON и YAML-файлов, описывающих наши сервисы. 

Формат записи JSON по одному сервису: `{ "имя сервиса" : "его IP"}`. 

Формат записи YAML по одному сервису: `- имя сервиса: его IP`. 

Если в момент исполнения скрипта меняется IP у сервиса — он должен так же поменяться в YAML и JSON-файле.

### Ваш скрипт:

```python
???
```

### Вывод скрипта при запуске во время тестирования:

```
???
```

### JSON-файл(ы), который(е) записал ваш скрипт:

```json
???
```

### YAML-файл(ы), который(е) записал ваш скрипт:

```yaml
???
```

---

## Задание со звёздочкой* 

Это самостоятельное задание, его выполнение необязательно.
____

Так как команды в нашей компании никак не могут прийти к единому мнению о том, какой формат разметки данных использовать: JSON или YAML, нам нужно реализовать парсер из одного формата в другой. Он должен уметь:

   * принимать на вход имя файла;
   * проверять формат исходного файла. Если файл не JSON или YAML — скрипт должен остановить свою работу;
   * распознавать, какой формат данных в файле. Считается, что файлы *.json и *.yml могут быть перепутаны;
   * перекодировать данные из исходного формата во второй доступный —  из JSON в YAML, из YAML в JSON;
   * при обнаружении ошибки в исходном файле указать в стандартном выводе строку с ошибкой синтаксиса и её номер;
   * полученный файл должен иметь имя исходного файла, разница в наименовании обеспечивается разницей расширения файлов.

### Ваш скрипт:

```python
???
```

### Пример работы скрипта:

???

----

### Правила приёма домашнего задания

В личном кабинете отправлена ссылка на .md-файл в вашем репозитории.

-----

### Критерии оценки

Зачёт:

* выполнены все задания;
* ответы даны в развёрнутой форме;
* приложены соответствующие скриншоты и файлы проекта;
* в выполненных заданиях нет противоречий и нарушения логики.

На доработку:

* задание выполнено частично или не выполнено вообще;
* в логике выполнения заданий есть противоречия и существенные недостатки.  
 
Обязательными являются задачи без звёздочки. Их выполнение необходимо для получения зачёта и диплома о профессиональной переподготовке.

Задачи со звёздочкой (*) являются дополнительными или задачами повышенной сложности. Они необязательные, но их выполнение поможет лучше разобраться в теме.
