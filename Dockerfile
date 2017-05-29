FROM debian:stable 


# Install base data analysis packages needed by BL09 data analysis
RUN apt-get update && apt-get install --fix-missing -y \
        python-numpy \
        python-h5py \    
        python-nxs \
        ipython \
        vim

# Install dependencies needed by scipion
RUN apt-get install -y \
        libopenmpi-dev \
        openmpi-bin \
        gfortran

# Install jdk needed by scipion 
RUN echo "deb http://ftp.debian.org/debian jessie-backports main" | tee -a /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y -t jessie-backports openjdk-8-jdk ca-certificates-java

