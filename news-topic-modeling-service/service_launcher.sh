#!/bin/bash
sudo systemctl start mongod

pip3 install -r requirements.txt

cd server ;
python3 topic_modeling_service.py

echo "=================================================="
read -p "PRESS [ENTER] TO TERMINATE PROCESSES." PRESSKEY

kill $(jobs -p)