#!/bin/bash
set -e -x

comando=$1
cd /home
#python3 setup.py $comando
pwd
ls -l *
ls -l
contenido=$(ls -l)
echo ${contenido}

id="uid"
html_url=$PWD/$(ls dist/)
upload_url=$(pwd)

echo ::set-output name=id::$id
echo ::set-output name=html_url::$html_url
echo ::set-output name=upload_url::$upload_url
