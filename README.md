Для удобства перенес лабу в отдельный репозиторий.
# Описание входного синтаксиса
Регулярку можно подать только через файл.

Синтаксис входных данных:
- [regex] ::= [regex][binary][regex] | ([regex]) | [regex][unary] | [symbol] | ɛ
- [binary] ::= | | ɛ
- [unary] ::= * | +

[symbol] должен быть заглавной или строчной буквой латинского или русского алфавита (в принципе можно взять и другие алфавиты).

Замечание: ɛ в явном виде будет расценен как буква, но при этом при печати пустая строка тоже будет записываться, как ɛ. Так что его использовать можно, но не стоит.

Регулярка может быть окружена любым числом пробельных символов, но внутри регулярки допускаются только непосредственно пробелы (также любое их число).

Примеры корректого ввода вы можете найти в папке tests.

Примеры некорректного ввода, за исключением использования пробельных символов, кроме пробела, посреди регулярки и использования некорректных символов (которые не являются буквами какого-нибудь алфавита), думаю можно считать концептуальными багами.
# Все, что необходимо для запуска
Для запуска лабораторной вам нужен компилятор haskell, а также проектные менеджеры stack и cabal.
Их можно очень просто поставить с помощью ghcup:
- Вот гайд по установке: https://www.haskell.org/ghcup/install/
- Далее вам нужно ввести в терминал следующую команду: <code>ghcup tui</code> и в открывшемся интерфейсе установить все необходимое.
  
Непосредственно запуск:
- Запускаете терминал в корневой директории проекта и запускаете компиляцию: <code>stack build</code>
- Запускате программу: <code>stack exec Lab2Infix-exe</code> 
- Вводите название файла, из которого будет прочитана регулярка. Внимание: файл должен обязательно распогаться в папке tests
# Интерпретация выходных данных
Задача лабораторной: вывести список регулярных подвыражений. В общем-то, они как раз и выводятся.