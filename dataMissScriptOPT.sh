#Varying L1D block size
#4MB LL cache
#                                                cache size, associativity, total block size
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,2,64   	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive	#8B block
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,2,128   	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive	#16B block
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,2,256   	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive	#32B block
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,2,512   	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,2,1024  	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=4096,2,2048  	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive

#valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,2,64   	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,2,128   	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,2,256   	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,2,512   	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,2,1024  	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=8192,2,2048  	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive

#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,2,64  	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,2,128 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,2,256 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,2,512 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,2,1024	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=16384,2,2048	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,2,64  	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,2,128 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,2,256 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,2,512 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,2,1024	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,2,2048  	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive




#ASSOCIATIVITY
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,1,32  	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,2,64 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,4,128 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,256 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,16,512 	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,32,1024	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive

#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,1,32  	--LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,2,64    --LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,4,128   --LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,256   --LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,16,512  --LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,32,1024 --LL=4194304,16,1024  build/./ecse425proj -N 10 -operation 0 -naive

#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,1,32  	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,2,64 	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,4,128 	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,8,256 	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,16,512 	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=32768,32,1024	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive

#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,1,32  	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,2,64    --LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,4,128   --LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,8,256   --LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,16,512  --LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=32768,8,512 --D1=65536,32,1024 --LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive

#Varying instruction cache
#valgrind --tool=cachegrind --I1=4096,2,64   --D1=32768,2,2048	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=4096,2,128  --D1=32768,2,2048	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=4096,2,256  --D1=32768,2,2048	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=4096,2,512  --D1=32768,2,2048	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=4096,2,1024 --D1=32768,2,2048	--LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive
#valgrind --tool=cachegrind --I1=4096,2,2048 --D1=32768,2,2048  --LL=4194304,16,1024  build/./ecse425proj -N 100 -operation 0 -naive

#Varying lower level cache
valgrind --tool=cachegrind --I1=32768,8,512  --D1=4096,2,2048  	--LL=524288,16,1024  	build/./ecse425proj -N 1000 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512  --D1=4096,2,2048	--LL=1048576,16,1024  	build/./ecse425proj -N 1000 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512  --D1=4096,2,2048	--LL=2097152,16,1024  	build/./ecse425proj -N 1000 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512  --D1=4096,2,2048	--LL=4194304,16,1024  	build/./ecse425proj -N 1000 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512  --D1=4096,2,2048	--LL=8388608,16,1024  	build/./ecse425proj -N 1000 -operation 0 -naive
valgrind --tool=cachegrind --I1=32768,8,512  --D1=4096,2,2048	--LL=16777216,16,1024  	build/./ecse425proj -N 1000 -operation 0 -naive

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