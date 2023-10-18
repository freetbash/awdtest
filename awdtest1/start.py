#!/bin/python3
import requests
import random
import string
import time
import os
from threading import Thread

def gf():
    while True:
        r = ''.join(random.sample(string.ascii_letters + string.digits, 20))
        flag = 'flag{' + r.lower() + '}'
        with open("/flag.txt", 'w') as f:
            f.write(flag)
        time.sleep(600)

if __name__ == '__main__':
    gf()
