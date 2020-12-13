# Игра "Виселица"

## Скриншот
![alt](https://github.com/Dmitry-Dack9/Hangman/blob/master/screenshot.png)

## Описание
Компьютер загадывает слово (из списка в файле) ипоказывает, сколько в нем букв. Игрок вводит буквы по одной. Если буква есть в слове, компьютер показывает, сколько раз она в нем встречается и на каких местах. Если игрок вводит букву "е" или "и", то открываются, если они есть в слове, соответственно, "ё" и/или "й". Если буквы нет, компьютер засчитывает ошибку. Если слово отгадано полностью, игрок победил. По сле каждой ошибки дорисовывается виселица. Всего можно сделать 7 ошибок. 

## Дополнительная информация
Игра консольная и написана на Руби.

## Запуск
Перед запуском выполнить 

```
bundle install
```

Запуск 

```
bundle exec ruby main.rb
```

## Редактирование списка слов
Для того, чтобы изменить загадываемые слова, необходимо внести каждое новое слово с новой строки в файл 
`data/words.txt`
