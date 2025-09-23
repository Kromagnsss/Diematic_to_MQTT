ARG BUILD_FROM=ghcr.io/hassio-addons/base-python:3.12
FROM ${BUILD_FROM}

# Installer dépendances Python
RUN pip install --no-cache-dir paho-mqtt pymodbus

# Copier les sources
WORKDIR /usr/src/app
COPY src/ /usr/src/app/

# Point d’entrée
CMD ["python3", "/usr/src/app/Diematic32MQTT.py"]
