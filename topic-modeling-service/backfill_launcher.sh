#!/bin/bash
sudo systemctl start mongod

pip3 install -r requirements.txt

python3 backfill.py

echo "=================================================="
read -p "PRESS [ENTER] TO TERMINATE PROCESSES." PRESSKEY

kill $(jobs -p)