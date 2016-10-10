# language: ru

Функциональность: Работа с внешними репозиториями

Как разработчик
Я хочу иметь возможность управлять внешними репозиториями
Чтобы мочь автоматизировать больше рутинных действий на OneScript

Контекст:
    Допустим Я создаю новый объект ГитРепозиторий
    И Я создаю временный каталог и сохраняю его в контекст
    И Я инициализирую репозиторий во временном каталоге

Сценарий: Добавление внешнего репозитория
    Когда Я добавляю внешний репозиторий "test" по адресу "http://fake.com"
    И Я получаю список внешних репозиториев
    Тогда Список внешних репозиториев содержит "test" с адресом "http://fake.com"

Сценарий: Удаление внешнего репозитория
    Допустим Я добавляю внешний репозиторий "test" по адресу "http://fake.com"
    Когда Я удаляю внешний репозиторий "test"
    И Я получаю список внешних репозиториев
    Тогда Вывод команды не содержит "test"

Сценарий: Получение списка внешних репозиториев
    Допустим Я добавляю внешний репозиторий "test1" по адресу "http://fake1.com"
    И Я добавляю внешний репозиторий "test2" по адресу "http://fake2.com"
    Когда Я получаю список внешних репозиториев
    Тогда Список внешних репозиториев содержит "test1" с адресом "http://fake1.com"
    И Список внешних репозиториев содержит "test2" с адресом "http://fake2.com"
