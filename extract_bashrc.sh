#!/bin/bash
# Task 2
# Проверка существования файла .bashrc
if [ ! -f "$HOME/.bashrc" ]; then
  echo "Файл ~/.bashrc не найден." >&2  # >&2 перенаправляет сообщение об ошибке на stderr
  exit 1
fi

# Вывод строк с 12 по 45 в файл output.txt
head -n 45 "$HOME/.bashrc" | tail -n +12 > output.txt

# Проверка успешности выполнения
if [ $? -eq 0 ]; then
  echo "Строки с 12 по 45 из файла ~/.bashrc успешно выведены в файл output.txt"
else
  echo "Ошибка при выводе строк в файл output.txt" >&2
  exit 1
fi

exit 0
