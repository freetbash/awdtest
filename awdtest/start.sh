#!/bin/bash

service ssh start
./start.py&
python3 -m http.server 80

tail -f /dev/null
