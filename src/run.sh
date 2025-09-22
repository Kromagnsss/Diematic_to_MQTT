#!/usr/bin/with-contenv bashio
set -e

# Récupérer les options depuis config.json
HOST=$(bashio::config 'host')
PORT=$(bashio::config 'port')
MQTT_BROKER=$(bashio::config 'mqtt_broker')
MQTT_USER=$(bashio::config 'mqtt_user')
MQTT_PASS=$(bashio::config 'mqtt_pass')

echo "Lancement Diematic32MQTT sur $HOST:$PORT -> $MQTT_BROKER"

# Lancer ton script
python3 /Diematic32MQTT.py \
  --host "$HOST" \
  --port "$PORT" \
  --mqtt-broker "$MQTT_BROKER" \
  --mqtt-user "$MQTT_USER" \
  --mqtt-pass "$MQTT_PASS"
