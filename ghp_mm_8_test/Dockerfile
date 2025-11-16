ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-addon-base:latest
FROM ${BUILD_FROM}

# Устанавливаем Python и зависимости
RUN apk add --no-cache python3 py3-pip py3-virtualenv jq

WORKDIR /usr/src/app
COPY . .

# Создаём виртуальное окружение и ставим зависимости
RUN python3 -m venv /venv \
    && . /venv/bin/activate \
    && pip install --no-cache-dir -r requirements.txt

# Делаем run.sh исполняемым и переносим в /usr/bin
RUN chmod +x /usr/src/app/run.sh \
    && mv /usr/src/app/run.sh /usr/bin/run.sh
