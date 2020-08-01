All: lambda Makefile.CUDA

.PHONY: lambda Makefile.CUDA

lambda:
	cd lambda && make && ./lambda

Makefile.CUDA:
	./Makefile.CUDA

clean:
	cd lambda; make clean
