#!/bin/sh

PANDORA_NEXT_DATA="data"
## 环境变量的值  
sed -i "s/\"license_id\": \".*\"/\"license_id\": \"$license_id\"/" data/config.json
echo $license_id
mkdir -p /sessions
chmod 775 PandoraNext
chmod +x PandoraNext
echo '启动中'
ls -l PandoraNext
nohup ./PandoraNext -config "${PANDORA_NEXT_DATA}/config.json" -tokens "${PANDORA_NEXT_DATA}/tokens.json" -license "${PANDORA_NEXT_DATA}/license.jwt" &
echo '启动完成'
alias yarn='echo' && yarn run build
