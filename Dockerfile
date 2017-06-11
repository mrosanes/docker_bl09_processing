FROM mrosanes/docker_bl09_processing:wget_git_nxs_h5py_java8

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
        libfreetype6-dev

# Install scipion
WORKDIR "/home"
RUN git clone https://github.com/I2PC/scipion.git
WORKDIR "/home/scipion"
RUN ./scipion config
RUN ./scipion install -j 4
RUN rm -rf sofware/tmp/*
RUN rm -rf sofware/em/*.tgz
WORKDIR "/"

# Export Path to allow running scipion
RUN export PATH=$PATH:/home/scipion/

CMD ["/bin/bash"]



