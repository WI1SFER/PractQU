# Практическое занятие №1. Введение, основы работы в командной строке


## Задача 1
```cut -d: -f1 /etc/passwd |sort```

![1qu.png](Photos/1qu.png)

## Задача 2
```cat /etc/protocols | awk '{print $2, $1}' | sort -rn | head -n 5 | awk '{printf "%d %s\n", $1, $2}'```

![2qu.png](Photos/2qu.png)

## Задача 3
```
#!/bin/bash

# Текст для баннера
text="Hello from RTU MIREA!"

# Вычисляем длину текста
length=${#text}

# Создаем верхнюю и нижнюю границы
border=$(printf "%0.s-" $(seq 1 $((length + 2))))
border="+$border+"

# Выводим баннер
echo "$border"
echo "| $text |"
echo "$border"
```          

![3qu.png](photos/3qu.png)
