#!/bin/bash

echo "Запуск скрипта наполнения данными"

for i in {0..50}
do
  curl -X 'POST' \
    'http://localhost/devices' \
    -H 'accept: application/json' \
    -H 'Content-Type: application/json' \
    -d '{
    "id": 10,
    "name": "dt-0'$i'",
    "type": "temperature",
    "serialNumber": "0000-0000-0000-00'$i'",
    "modelName": "Терманльный анализатор",
    "manufacturer": "Автоваз"
  }'

  echo "Датчик '$i' добавлен"
done;
