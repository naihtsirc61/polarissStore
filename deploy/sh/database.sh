#!/bin/bash

echo "Borrando base de datos actual"
sudo rm -r /home/tics/jair/polariss/app/db/polarissWeb.sqlite3

echo "Restaurando base de datos nueva"
sudo cp /home/tics/jair/polariss/app/deploy/data/polarissWeb.sqlite3 /home/tics/jair/factora/app/db/polarissWeb.sqlite3

sudo chmod 7777 /home/tics/jair/factora/app/db/polarissWeb.sqlite3

sudo supervisorctl restart heytest

echo "Terminado proceso"
