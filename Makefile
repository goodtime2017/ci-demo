test: circle.o square.o test.o
	@echo "Linking .o files" 
	g++ -o test circle.o square.o test.o

circle.o: circle.cpp circle.h
	@echo "compiling circle.o"
	g++ -c circle.cpp

square.o: square.cpp square.h
	@echo "compiling square.o"
	g++ -c square.cpp

test.o: test.cpp circle.h square.h
	@echo "compiling test.o"
	g++ -c test.cpp

.PHONY: clean
clean:
	-rm *.o
	-rm test
