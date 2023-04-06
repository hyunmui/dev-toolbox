#!/bin/bash

# URL 목록
urls=(
    "https://www.example.com"
    "https://www.example.org"
    "https://www.example.net"
)

# GTM 스크립트
gtm_script="https://www.googletagmanager.com/gtm.js?id=GTM-XXXXXXX"

# URL 목록에서 GTM 설치 여부 확인
for url in "${urls[@]}"
do
    if curl -s "$url" | grep -q "$gtm_script"; then
        echo "GTM is installed on $url"
    else
        echo "GTM is not installed on $url"
    fi
done