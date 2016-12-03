#makefile variables
CC=g++
CFLAGS=-g -Wall
FILES=Assignment.cpp GradedActivity.cpp PassFailExam.cpp program.cpp

#compiles the output executable
#default entry, so 'make' will run this
default:
	@echo "--- compiling executable ..."
	$(CC) $(CFLAGS) $(FILES) -o program

#removes any object files and executables
clean:
	@echo "--- deleting executables ..."
	rm -rf program
