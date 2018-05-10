library(Rcpp)
Sys.setenv('PKG_CXXFLAGS' = '-std=c++11 -Wall -pedantic -fopenmp')
sourceCpp('IWT2OMP.cpp')

source('GeneraDati.R')
n = 50
p = 100
B = 1000
alt = 'two.sided'
maxrow = 0
paired = T
recycle = T
THREADS = 1

Cycle = function (n, p, B, maxrow, paired, recycle, alt, THREADS, IWT2OMP) {
    
    cat(paste('\n\nn\tp\tB\tmaxr\tpair\trecy\talter\n', sep = ''))
    cat(paste(n, p, B, maxrow, paired, recycle, alt, '\n\n', sep = '\t'))
    
    T1 = Sys.time()
    IWT2OMP(B, alt, maxrow, paired, recycle, THREADS)
    T2 = Sys.time()
    
    print(T2 - T1)
    cat('\n---------------------------------------------------------')
}

Cycle(n, p, B, maxrow, paired, recycle, alt, THREADS, IWT2OMP)
