#Varying L1D block size
#4MB LL cache
valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,8,64   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive	#8B block
valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,8,128   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive	#16B block
valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,8,256   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive	#32B block
valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,8,512   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,16,512   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,32,512   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive

valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,8,64   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,8,128   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,8,256   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,8,512   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,8,1024   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,8,2048   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive

#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,8,64   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,8,128   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,8,256   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,8,512   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,8,1024  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,8,2048  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,64  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,128  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,256  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,512  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,1024  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,2048 --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive

#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,64    --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,128   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,256   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,512   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,1024  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,2048  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=131072,8,64   --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=131072,8,128  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=131072,8,256  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=131072,8,512  --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=131072,8,1024 --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=131072,8,2048 --LL=4194304,16,1024  build/./ecse425proj -N 256 -operation 0 -naive


#8MB LL cache
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,8,512   --LL=8388608,32,2048  build/./ecse425proj -N 256 -operation 0 -OPT
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,8,512   --LL=8388608,32,2048  build/./ecse425proj -N 256 -operation 0 -OPT
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,8,512  --LL=8388608,32,2048  build/./ecse425proj -N 256 -operation 0 -OPT
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,512  --LL=8388608,32,2048  build/./ecse425proj -N 256 -operation 0 -OPT
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,512  --LL=8388608,32,2048  build/./ecse425proj -N 256 -operation 0 -OPT
##valgrind --tool=cachegrind --I1=32768,8,512 --D1=131072,8,512 --LL=8388608,32,2048  build/./ecse425proj -N 256 -operation 0 -OPT
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=262144,8,512 --LL=8388608,32,2048  build/./ecse425proj -N 256 -operation 0 -OPT
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=524288,8,512 --LL=8388608,32,2048  build/./ecse425proj -N 256 -operation 0 -OPT

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