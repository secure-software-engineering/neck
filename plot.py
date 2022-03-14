import matplotlib as mpl
import matplotlib.pyplot as plt
import csv

mpl.use("pgf")
mpl.rcParams.update({
    "pgf.texsystem": "pdflatex",
    'font.family': 'serif',
    'text.usetex': True,
    'pgf.rcfonts': False,
})


OUTFILE = 'benchmark.csv'


x = []
ytime = []
ymem = []

with open(OUTFILE) as csvfile:
    lines = csv.DictReader(csvfile, delimiter=',')
    for row in lines:
        x.append(row['LOC'])
        ytime.append(float(row['Time']))
        ymem.append(float(row['Memory']))

plt.plot(x, ytime, color='g', linestyle='dashed',
         marker='o', label="Time")

# plt.xticks(rotation = 25)
plt.xlabel('LOC')
plt.ylabel('Time(s)')
plt.title('Time vs  LOC', fontsize=20)
plt.grid()
plt.legend()
plt.show()
plt.savefig('time.pgf')
plt.clf()

plt.plot(x, ymem, color='r', linestyle='dashed',
         marker='o', label="Memory")

# plt.xticks(rotation = 25)
plt.xlabel('LOC')
plt.ylabel('Memory(kbytes)')
# plt.title('Weather Report', fontsize = 20)
plt.grid()
plt.legend()
plt.show()
plt.savefig('memory.pgf')
plt.clf()
