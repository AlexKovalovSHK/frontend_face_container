FROM node:alpine AS dependencies

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install --production

# Копируем остальные файлы приложения
COPY . .

# Собираем приложение
RUN npm run build

# Шаг 2: Создаем легковесный образ на основе Nginx
FROM nginx:alpine
# Открываем порт
EXPOSE 3003

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
