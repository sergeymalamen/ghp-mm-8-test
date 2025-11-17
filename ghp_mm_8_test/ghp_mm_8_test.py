import os

print("✅ ghp_mm_8_test.py запущен")

print("🔧 Полученные переменные окружения:")
print("SERIAL_PORT:", os.getenv("SERIAL_PORT"))
print("MQTT_BROKER:", os.getenv("MQTT_BROKER"))
print("MQTT_PORT:", os.getenv("MQTT_PORT"))
print("MQTT_USERNAME:", os.getenv("MQTT_USERNAME"))
print("MQTT_PASSWORD:", os.getenv("MQTT_PASSWORD"))
