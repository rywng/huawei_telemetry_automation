import os
import sys
import time


if __name__ == '__main__':
    shell_path = sys.argv[1]
    for line in open(shell_path).readlines():
        line = line.strip()
        if line.startswith('sleep'):
            second = line.split(' ')[-1][:-1]
            time.sleep(int(second))
        if line.startswith('adb'):
            os.system(line)