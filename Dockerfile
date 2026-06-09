FROM python:3.10-slim

WORKDIR /app

# Copy toàn bộ code bot vào server
COPY . .

# Cài đặt các thư viện cần thiết
RUN pip install --no-cache-dir python-telegram-bot pyTelegramBotAPI requests

# Lệnh kích hoạt chạy file bot chính của bạn
CMD ["python", "botspamsms/main.py"]
