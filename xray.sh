#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d19cc366-d0d6-4328-b920-418ee73931d9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

