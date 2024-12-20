# language: ru

# Тестовые данные:

Функция: Добавление в бд существующего элемента

  Сценарий: Добавление в бд существующего элемента
    * к БД выполнено подключение "H2" с параметрами:
      | field    | value |
      | user     | user  |
      | password | pass  |


    * к БД выполняется запрос "Добавление элемента" c параметрами:
      | field       | value   |
      | FOOD_NAME   | Артишок |
      | FOOD_TYPE   | Овощ    |
      | FOOD_EXOTIC | 1       |

    * к БД выполняется запрос "Проверка добавления"
    Тогда количество элементов коллекции "Проверка добавления" не равно нулю
    И количество элементов коллекции "Проверка добавления" равно "5"

    * к БД выполняется запрос "Удаление последнего элемента" c параметрами:
      | field     | value   |
      | FOOD_NAME | Артишок |

    * к БД выполняется запрос "Проверка добавления"
    Тогда количество элементов коллекции "Проверка добавления" равно "4"