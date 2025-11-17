#!/usr/bin/with-contenv bashio

. /venv/bin/activate

bashio::log.info "✅ run.sh запущен как PID: $$"

SERIAL_PORT=$(bashio::config 'serial_port')
MQTT_BROKER=$(bashio::config 'mqtt_broker')
MQTT_PORT=$(bashio::config 'mqtt_port')
MQTT_USERNAME=$(bashio::config 'mqtt_username')
MQTT_PASSWORD=$(bashio::config 'mqtt_password')

bashio::log.info "🔧 Конфигурация:"
bashio::log.info "Serial: ${SERIAL_PORT}"
bashio::log.info "Broker: ${MQTT_BROKER}:${MQTT_PORT}"
bashio::log.info "User: ${MQTT_USERNAME}"

# Запуск твоего основного скрипта
exec python3 /usr/src/app/ghp_mm_8_test.py
