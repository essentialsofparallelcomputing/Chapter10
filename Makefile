All: lambda Makefile.CUDA
#All: lambda Makefile.CUDA Makefile.OpenCL

.PHONY: lambda Makefile.CUDA Makefile.OpenCL

lambda:
	cd lambda && make && ./lambda

Makefile.CUDA:
	make -f ./Makefile.CUDA

Makefile.OpenCL:
	make -f ./Makefile.OpenCL

clean:
	cd lambda && make clean
	cd Babelstream && make clean
