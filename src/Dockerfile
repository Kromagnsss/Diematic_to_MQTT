ARG BUILD_FROM=ghcr.io/hassio-addons/base-python:3.12
FROM ${BUILD_FROM}

# Installer dépendances
RUN pip install --no-cache-dir paho-mqtt pymodbus

# Copier ton code
WORKDIR /usr/src/app
COPY Diematic32MQTT.py /usr/src/app/Diematic32MQTT.py
COPY DDModbus.py /usr/src/app/DDModbus.py
COPY Diematic3Panel.py /usr/src/app/Diematic3Panel.py
COPY DiematicDeltaPanel.py /usr/src/app/DiematicDeltaPanel.py
COPY Hassio.py /usr/src/app/Hassio.py

# Le dossier de config sera monté par HA dans /data/conf
RUN mkdir -p /data/conf

# Exécuter le script
CMD ["python3", "/usr/src/app/Diematic32MQTT.py"]
