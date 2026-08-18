#!/bin/bash

APP_ID="btop-max"

# Ищем ID окна с нужным app_id через jq (парсер JSON, который точно есть в Void)
# Если niri msg возвращает текст, парсим его стандартным awk
WINDOW_ID=$(niri msg -j windows 2>/dev/null | jq ".[] | select(.app_id == \"$APP_ID\") | .id" 2>/dev/null)

# Если jq не сработал или его нет, используем текстовый поиск ID
if [ -z "$WINDOW_ID" ]; then
    WINDOW_ID=$(niri msg windows | awk "/id:/ {id=\$2} /app_id: \"?$APP_ID\"?/ {print id; exit}")
fi

if [ -n "$WINDOW_ID" ]; then
    # Если окно найдено, закрываем его напрямую по его ID
    niri msg action close-window --id "$WINDOW_ID"
else
    # Если окна нет, запускаем точно так же, как у вас работало раньше
    alacritty --class "$APP_ID" -e btop &
fi
