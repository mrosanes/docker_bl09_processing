FROM debian:stable 


# Install packages
RUN apt-get update && apt-get install --fix-missing -y \
        python-numpy \
        python-h5py \    
        python-nxs \
        ipython \
        vim \
        libopenmpi-dev \
        openmpi-bin \
        gfortran \


RUN echo "deb http://ftp.de.debian.org/debian jessie-backports main" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y openjdk-8-jdk






