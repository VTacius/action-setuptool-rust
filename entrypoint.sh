#!/bin/bash -x
set -e -x

CARGO_BIN=$(dirname $(find / -wholename '*cargo/bin/cargo'))
export PATH="${CARGO_BIN}:${PATH}"

rustup default nightly

comando=$1
python3 setup.py $comando

id="uid"
html_url=$(ls dist/)
upload_url=$(ls *)
fichero=$(find dist/ -mindepth 1)

echo ::set-output name=${CARGO_BIN}
echo ::set-output name=html_url::$html_url
echo ::set-output name=upload_url::$upload_url
echo ::set-output name=fichero::$fichero
