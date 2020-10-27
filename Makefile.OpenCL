All: BabelStream

.PHONY: BabelStream

BabelStream:
	cd BabelStream && make -f OpenCL.make && \
	  rcprof -p -O -o `pwd`/Session1.csv ./ocl-stream && \
	  rcprof --occupancydisplay Session1.occupancy --occupancyindex 4 -o occupancy4.html

