#!/bin/bash -x
set -e -x

comando=$1

python3 setup.py $comando

id="uid"
html_url=$(ls -l)
upload_url=$(ls /)

echo ::set-output name=${contenido}
echo ::set-output name=html_url::$html_url
echo ::set-output name=upload_url::$upload_url
