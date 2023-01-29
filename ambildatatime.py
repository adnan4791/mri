import subprocess
from itertools import product

for x,y in product(['512','1024','2048'],['4','2','1'],repeat=1):
    filename = "data_"+x+'_'+y+'02082022.txt'
    with open(filename,'a') as f:
         subprocess.Popen(['./Implementation_CPU_omp1', 'kspace', '136', '4', x,y],stdout=f,universal_newlines=True)

    
