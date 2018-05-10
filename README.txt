TESTS FROM COMMAND LINE

Requirements:
- main.cpp,
- Makefile,
- GetPot header (2.0 or later),
- Eigen library (3.3.3 or later).

Commands:
$ module load eigen
$ export OMP_NUM_THREADS=1
$ make
$ ./main n1=50 n2=50 p=10



EXAMPLES FROM R

Requirements:
- Examples.R,
- AuxiliaryFunctions.R,
- IWT2.R,
- IWTImage.R,
- IWT2OMP.cpp,
- mvtnorm package (1.0 or later),
- Rcpp package (0.12.13 or later),
- RcppEigen package (0.3.3.3 or later),
- Rtools (latest frozen version).

Commands:
source("Examples.R")