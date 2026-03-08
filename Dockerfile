# 1. Базовый образ (легкий веб-сервер nginx)
FROM nginx:alpine

# 2. Копируем твой HTML в стандартную папку nginx
COPY index.html /usr/share/nginx/html/index.html

# 3. Открываем 80 порт (стандарт для веба)
EXPOSE 80

# 4. Запускаем nginx в режиме демо (чтобы контейнер не падал сразу)
CMD ["nginx", "-g", "daemon off;"]