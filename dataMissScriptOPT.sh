#Varying L1D cache size
valgrind --tool=cachegrind --I1=32768,8,512 --D1=1024,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT
valgrind --tool=cachegrind --I1=32768,8,512 --D1=2048,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT
valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT
valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT
valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT
valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT
valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT
valgrind --tool=cachegrind --I1=32768,8,512 --D1=131072,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT
valgrind --tool=cachegrind --I1=32768,8,512 --D1=262144,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT
valgrind --tool=cachegrind --I1=32768,8,512 --D1=524288,8,512 --LL=6291456,24,1536  build/./ecse425proj -N 1000 -operation 0 -OPT

#I1 cache:         32768 B, 64 B, 8-way associative
#D1 cache:         32768 B, 64 B, 8-way associative
#LL cache:         6291456 B, 64 B, 24-way associative


#Varying L1D block size

#Varying L1D associativity

##These will probably not have an effect on cache misses##
#Varying L1I cache size

#Varying L1I block size

#Varying L1I associativity


#Varying LL cache size

#Varying LL block size

#Varying LL associativity