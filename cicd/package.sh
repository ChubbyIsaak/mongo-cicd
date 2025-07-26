#!/bin/bash
DATE=$(date +%F-%H%M)
NAME="change-$DATE"
mkdir -p dba-packages/$NAME

cp scripts/*.js dba-packages/$NAME/
cp scripts/*.json dba-packages/$NAME/ 2>/dev/null || true
cp scripts/README.md dba-packages/$NAME/
cd dba-packages/$NAME
zip ../$NAME.zip *
cd ..
sha256sum $NAME.zip > $NAME.sha256.txt

echo "✔️ Paquete generado: $NAME.zip"
