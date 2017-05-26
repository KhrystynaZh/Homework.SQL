Binary Studio Academy PHP 2017
====

### Домашнее задание #2

#### Требования
В этом задании мы будем работать с БД MySQL, а значит вам нужно
установить её себе и настроить.

Рекомендуется использовать Vagrant и виртуальную машину Homestead.
Подробнее здесь: https://laravel.com/docs/5.4/homestead

В Homestead MySQL уже установлен.

(user: `homestead`, password: `secret`)

**Внимание:** решение каждого задания необходимо предоставить в отдельном файле с 
расширением `task%номер%.sql` в папке `src`. Например, `task8.sql`.

***

#### Установка

Установка показана в рабочем окружении OS Linux:

```bash
git clone git@github.com:BinaryStudioAcademy/bsa-2017-php-2.git
cd bsa-2017-php-2
composer install
```

#### Задания

Перед каждым запуском теста, будет создана чистая структура базы данных на основе schema.sql

Данная структура представляет собой систему бронирования билетов. В таблице `users`
хранятся данные о пользователях. В таблице `tickets` - билеты, которые могут быть куплены,
`bookings` - хранит историю заказов пользователя.

##### Структура таблиц

___tickets___

`title` - имя билета

`country` - страна направления

`price` - цена

___users___

`first_name` - имя пользователя

`last_name` - фамилия пользователя

___bookings___

`user_id` - ссылка на пользователя

`ticket_id` - ссылка на билет

В первую очередь нужно создать базу данных.

Переходим в каталог `src`

```bash
cd src/
```

Подключаемся к базе mysql


```bash
mysql -u homestead -p secret
```

После подключения создаём базу данных `bsa_php_2017`:

```bash
CREATE DATABASE `bsa_php_2017`;
exit
```

Применяем схему данных и набор тестовых данных.
Для этого запускаем скрипт в корне проекта.

```bash
./create_db
```

Перед запуском тестов проверь настройки подключения к базе
в файле `.env`.

Теперь можно приступать к выполнению заданий.


##### Задание 1

Выбрать всех пользователей старше 25 лет, которые купили билетов на сумму больше чем 400
условных зайчиков.

##### Задание 2

Выбрать всех пользователей, которые купили хотябы один билет.

##### Задание 3

Добавить `boolean` поле `is_deleted` c дэфолтным значением 0 в таблицу users. Поле не должно принимать значение `NULL`.

##### Задание 4

Написать запрос, который обновит поле `is_deleted` и выставит значение 1 для всех пользователей, у которых нет
ниоджного купленного билета.

##### Задание 5

Выбрать всех пользователей, которые ниразу не покупали билет в страну "Aruba".

##### Задание 6

Выбрать всех пользователей, которые покупали билет с именем "Lagos".


***

#### Проверка

Как и в первом задании свои решения можно проверить запустив тесты PHPUnit.

Все тесты:

```bash
./vendor/bin/phpunit
```

Или тест для каждого задания в отдельности  
(Поскольку в этом случае у нас один тестовый класс используем `--filter`):

```bash
./vendor/bin/phpunit --filter task1
```

***

#### Приём решений

В идеале разместить ваше решение в одельном репозитории или форке текущего на Github или Bitbucket
и прислать ссылку на него.
Крайний вариант прислать ссылку на архив с решением.
