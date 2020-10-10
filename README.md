# Chapter 10 GPU programming model
This is from Chapter 10 of Parallel and High Performance Computing, Robey and Zamora
Manning Publications, available at http://manning.com

The book may be obtained at
   http://www.manning.com/?a_aid=ParallelComputingRobey

Copyright 2019-2020 Robert Robey, Yuliana Zamora, and Manning Publications
Emails: brobey@earthlink.net, yzamora215@gmail.com

See License.txt for licensing information.

# Lambda example (Book: listing 10.1)
   Build with make
      cd lambda && make
   Run with ./lambda

# Number of kernel registers -- BabelStream
   Build with make
	cd BabelStream && export EXTRA_FLAGS='-Xptxas="-v"' && make -f CUDA.make
   Look at output of compiler for number of registers

# CUDA Occupancy Calculator
   https://docs.nvidia.com/cuda/cuda-occupancy-calculator/index.html

# AMD ROCm rcprof
   cd BabelStream
   make -f OpenCL.make
   rcprof -p -O  -o `pwd`/Session1.csv ./ocl-stream
   rcprof --occupancydisplay Session1.occupancy --occupancyindex 4 -o occupancy4.html
