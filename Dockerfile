# Get the GCC preinstalled image from Docker Hub
FROM gcc:4.9

# Copy the current folder which contains C++ source code to the Docker image under /usr/src
COPY . /usr/src/genvisage

# Specify the working directory
WORKDIR /usr/src/genvisage

# Use GCC to compile the source file
RUN g++ -o rocchio rocchio.c -O3 -std=c++11

