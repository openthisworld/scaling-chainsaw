# Використання офіційного образу Nginx
FROM nginx:alpine

# Копіювання файлів конфігурації в образ
COPY src/nginx.conf /etc/nginx/nginx.conf

# Відкриття порту 80 для зовнішнього доступу
EXPOSE 80

# Команда для запуску Nginx
CMD ["nginx", "-g", "daemon off;"]
