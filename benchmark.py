#!/usr/bin/env python3

from asyncio import subprocess
from subprocess import PIPE, Popen
import re
import sys
import csv

OUTFILE = 'benchmark.csv'

def write_csv(PROGRAM, time, memory, loc):
    program = PROGRAM.split('.ll')[0].split('/')[-1]

    with open(OUTFILE, 'a') as csvfile:
        fieldnames = ['Program', 'Time_s', 'Memory_kbytes', 'LOC']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        # writer.writeheader()
        writer.writerow({'Program': program, 'Time_s': time, 'Memory_kbytes': memory, 'LOC': loc})

def execute(cmd):
    with Popen(cmd, stdout=PIPE, stderr=PIPE, shell=True) as process:
        outs, errs = process.communicate()#.decode("utf-8")
        outs = outs.decode("utf-8")
        errs = errs.decode("utf-8")
        return outs, errs


def to_seconds(timestr):
    seconds = 0
    for part in timestr.split(':'):
        seconds = seconds*60 + int(part, 10)
    return seconds


def get_time(s):
    minutes_and_seconds = s.split(':')
    minutes = float(minutes_and_seconds[0])
    seconds = float(minutes_and_seconds[1])
    return 60 * minutes + seconds


def get_mem(mem):
    return int(mem)


def cal_average(num):
    avg = sum(num) / len(num)
    return avg


def measure(PROGRAM, N):

    times_og = []
    mems_og = []

    for n in range(N):
        outs, errs = execute(PROGRAM)
        out_og = errs.split('\n')
        og_time = get_time(out_og[0].split(' ')[0])
        times_og.append(og_time)
        og_mem = get_mem(out_og[0].split(' ')[1])
        mems_og.append(og_mem)

    print("\nTotal iterations ", N)

    # average
    avg_time_og = cal_average(times_og)
    print("Average Time OG (in seconds) = ", avg_time_og)

    avg_mem_og = cal_average(mems_og)
    print("Average Memory OG (in kbytes) = ", avg_mem_og)

    # lines of code
    WORDCOUNT = "wc -l " + sys.argv[1]
    outs, errs = execute(WORDCOUNT)
    program_loc = int(outs.split(' ')[0])
    print("Lines of Code = ", program_loc)

    write_csv(PROGRAM, avg_time_og, avg_mem_og, program_loc)
    return 0


def usage():
    print('python benchmark.py </path/to/program.ll> <#ITERATIONS>\n')
    sys.exit(1)


def main():
    if len(sys.argv) != 3:
        usage()
    # E - Elapsed real (wall clock) time used by the process, in [hours:]minutes:seconds.
    # M - Maximum resident set size of the process during its lifetime, in Kilobytes.
    TIME = "/usr/bin/time -f '%E %M' "
    LLVMBITCODE = sys.argv[1]
    NECK = " ./build-release/tools/neck/neck -m "
    CONFIG = " -c ./config/cmd-tool-config.json --function-local-points-to-info-wo-globals --use-simplified-dfa"

    PROGRAM = TIME + NECK + LLVMBITCODE + CONFIG

    N = int(sys.argv[2])
    measure(PROGRAM, N)


if __name__ == '__main__':
    main()
