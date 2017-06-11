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

# Install dependencies needed by scipion
RUN apt-get install -y \
        gcc \
        g++ \
        cmake \
        openjdk-8-jdk \
        libxft-dev \
        libxext-dev \
        libxml2-dev \
        libreadline6 \
        libquadmath0 \
        libxslt1-dev \
        libopenmpi-dev \
        openmpi-bin \
        libxss-dev \
        libgsl0-dev \
        libx11-dev \
        gfortran \
        libfreetype6-dev \
        git

# Install scipion
RUN cd home
RUN git clone https://github.com/I2PC/scipion.git
RUN cd scipion
#RUN ./scipion config
#RUN ./scipion install -j 4
#RUN rm -rf sofware/tmp/*
#RUN rm -rf sofware/em/*.tgz

# Export Path to allow running scipion
#RUN export PATH=$PATH:/home/scipion/



