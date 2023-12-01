#!/bin/python3
import random
import time
import string

def gf():
    while True:
        r = ''.join(random.sample(string.ascii_letters + string.digits, 20))
        flag = 'flag{' + r.lower() + '}'
        with open("/flag", 'w') as f:
            f.write(flag)
        time.sleep(600)

if __name__ == '__main__':
    gf()
