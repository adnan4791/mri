FILE 		= COBA1

INC 	= 	-I./ \
				-I"/usr/local/include/opencv4/" \
				-I"/usr/local/include" \
				-I"/usr/include"
				

LIB 		=		-L"/usr/local/lib" -lopencv_core -lopencv_highgui -lopencv_imgproc \
				-L "/usr/lib" -lfftw3f_omp -lfftw3f -lm
				
.PHONY: clean

%: %.cpp
	g++ -o $@ $< -fopenmp $(INC) $(LIB) 

txt:$(FILE).exe
	./$(FILE)>output.txt
clean: 
	rm -f *.exe
