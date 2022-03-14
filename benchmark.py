#!/usr/bin/python
from subprocess import PIPE, DEVNULL, Popen
import re
import sys
import csv

OUTFILE = 'benchmark.csv'

def write_csv(PROGRAM, time, memory):
    # breakpoint()

    program = PROGRAM.split('.ll')[0].split('/')[-1]

    with open(OUTFILE, 'a') as csvfile:
        fieldnames = ['Program', 'Time', 'Memory', 'LOC']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        # writer.writeheader()
        writer.writerow({'Program': program, 'Time': time, 'Memory': memory, 'LOC':0})

def execute(cmd):
    with Popen(cmd, stdout=DEVNULL, stderr=PIPE, shell=True) as process:
        output = process.communicate()[1].decode("utf-8")
    return output


def to_seconds(timestr):
    seconds = 0
    for part in timestr.split(':'):
        seconds = seconds*60 + int(part, 10)
    return seconds


def get_time(s):
    # breakpoint()
    return to_seconds(s[3].split("):")[1].strip().replace(".", ":"))


def get_mem(s):
    return int(s[8].split("):")[1].strip())


def cal_average(num):
    avg = sum(num) / len(num)
    return avg


def measure(PROGRAM, N):

    times_og = []
    mems_og = []

    for n in range(N):
        out_original = execute(PROGRAM)
        out_og = out_original.split('\n')[-23:]
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

    write_csv(PROGRAM, avg_time_og, avg_mem_og)
    return 0


def usage():
    print('python benchmark.py </path/to/program.ll> <#ITERATIONS>\n')
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
