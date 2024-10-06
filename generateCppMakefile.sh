#!/bin/bash

# Prompt the user to enter a file name

echo "Please enter the .cpp filename: "

read filename

# Generate a make file

echo "
# Variables
CXX = g++	
CXXFLAGS = -ggdb -pedantic-errors -Wall -Weffc++ -Wconversion -Wsign-conversion -Werror -std=c++2b
SRC = $filename.cpp
OBJ = $filename.o
TARGET = $filename

# Executable
all: \$(TARGET)

# Compile
\$(OBJ): \$(SRC)
	\$(CXX) \$(CXXFLAGS) -c \$(SRC) -o \$(OBJ)

# Link
\$(TARGET): \$(OBJ)
	\$(CXX) \$(CXXFLAGS) -o \$(TARGET) \$(OBJ)

clean:
	rm -f \$(OBJ) \$(TARGET)


.PHONY: all clean
" > Makefile

