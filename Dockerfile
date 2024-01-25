# Используйте официальный образ Python
FROM python:3.9-slim

# Создайте и установите рабочую директорию внутри контейнера
WORKDIR /app

# Скопируйте requirements.txt в контейнер и установите зависимости
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Скопируйте содержимое вашего Django проекта в контейнер
COPY djangoProject3/ /app/


COPY . .
