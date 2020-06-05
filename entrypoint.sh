#!/bin/bash -x
set -e -x

CARGO_BIN=$(dirname $(find / -wholename '*cargo/bin/cargo'))
export PATH="${CARGO_BIN}:${PATH}"

rustup default nightly

comando=$1
python3 setup.py $comando

ruta_paquete=$(find dist/ -mindepth 1)
nombre_paquete=$(basename $ruta_paquete)

echo ::set-output name=ruta_paquete::$ruta_paquete
echo ::set-output name=nombre_paquete::$nombre_paquete
