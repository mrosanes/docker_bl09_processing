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
        gfortran






