#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4fc54eda-368e-4d49-a80e-b1049a96621c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

