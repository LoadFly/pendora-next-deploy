#!/bin/sh

PANDORA_NEXT_DATA="data"
## 环境变量的值
sed -i "s/\"license_id\": \".*\"/\"license_id\": \"$license_id\"/" data/config.json
if [ -z "$port" ]; then
   echo 'default port 8181'
else
  echo 'use port' $port
  sed -i "s/\"0.0.0.0:8181\"/\"0.0.0.0:$port\"/" data/config.json
fi
exit

echo 'use ' $license_id
mkdir -p /sessions
chmod 775 PandoraNext
chmod +x PandoraNext
echo '启动中'
ls -l PandoraNext
nohup ./PandoraNext -config "${PANDORA_NEXT_DATA}/config.json" -tokens "${PANDORA_NEXT_DATA}/tokens.json" -license "${PANDORA_NEXT_DATA}/license.jwt" > public/log.txt &
echo '启动完成' 
