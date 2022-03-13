#!/usr/bin/python
from subprocess import PIPE, DEVNULL, Popen
import re
import sys


def execute_err(cmd):
    with Popen(cmd, stdout=DEVNULL, stderr=PIPE, shell=True) as process:
        output = process.communicate()[1].decode("utf-8")
    return output


def original_run_err(BIN):
    cmd = BIN
    return execute_err(cmd)


def to_seconds(timestr):
    seconds = 0
    for part in timestr.split(':'):
        seconds = seconds*60 + int(part, 10)
    return seconds


def get_time(s):
    return to_seconds(s[7].split("):")[1].strip().replace(".", ":"))


def get_mem(s):
    return int(s[12].split("):")[1].strip())


def cal_average(num):
    avg = sum(num) / len(num)
    return avg


def measure(PROGRAM, N):

    times_og = []
    mems_og = []

    for n in range(N):
        out_original = original_err(PROGRAM)
        print("Iteration #: ", n+1)
        for i in range(len(out_original)):
            out_og = out_original[i].split('\n')
            # breakpoint()
            og_time = get_time(out_og)
            times_og.append(og_time)
            og_mem = get_mem(out_og)
            mems_og.append(og_mem)

    print("\nTotal iterations ", N)

    # average
    avg_time_og = cal_average(times_og)
    print("Average Time OG (in seconds) = ", avg_time_og)

    avg_mem_og = cal_average(mems_og)
    print("Average Memory OG (in kbytes) = ", avg_mem_og)

    return 0


def original_err(BIN):
    out_original = []
    t = original_run_err(BIN)
    out_original.append(t)
    return out_original


def usage():
    print('python benchmark.py </path/to/program.ll>\n')
    sys.exit(1)


def main():
    if len(sys.argv) != 3:
        usage()

    TIME = "/usr/bin/time -v "
    BIN = sys.argv[1]
    NECK = " ./build/tools/neck/neck -m "
    CONFIG = " -c ./config/cmd-tool-config.json --annotate --function-local-points-to-info-wo-globals"

    PROGRAM = TIME + NECK + BIN + CONFIG

    N = int(sys.argv[2])
    measure(PROGRAM, N)


if __name__ == '__main__':
    main()
