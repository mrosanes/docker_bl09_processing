FROM debian:stable 


# Install packages
RUN apt-get update && apt-get install --fix-missing -y \
        python-numpy \
        python-nxs \
        ipython \
        vim \






