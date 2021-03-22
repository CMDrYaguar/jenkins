#!/bin/sh 
nohup python3 test.py -l 0.0.0.0 -p 8000 & 
nginx -g "daemon off;" 
