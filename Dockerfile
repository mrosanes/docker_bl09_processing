FROM mrosanes/docker_bl09_processing:wget_git_nxs_h5py_java8

# Install dependencies needed by scipion
RUN apt-get install -y \
        gcc \
        g++ \
        cmake \
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




