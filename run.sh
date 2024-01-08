#!/bin/sh

PANDORA_NEXT_DATA="/data"
## 环境变量的值
sed -i "s/\"license_id\": \".*\"/\"license_id\": \"$license_id\"/" data/config.json
chmod -x PandoraNext
echo '启动中'
./PandoraNext -config "${PANDORA_NEXT_DATA}/config.json" -tokens "${PANDORA_NEXT_DATA}/tokens.json" -license "${PANDORA_NEXT_DATA}/license.jwt"
echo '启动完成'