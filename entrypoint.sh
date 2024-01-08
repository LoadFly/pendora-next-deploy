#!/bin/sh

PANDORA_NEXT_DATA="/data"

/opt/app/PandoraNext -config "${PANDORA_NEXT_DATA}/config.json" -tokens "${PANDORA_NEXT_DATA}/tokens.json" -license "${PANDORA_NEXT_DATA}/license.jwt"
