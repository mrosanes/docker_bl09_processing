FROM mrosanes/docker_bl09_processing:scipion_dependencies_to_compile

# Checkout scipion code and configure scipion
WORKDIR "/home"
RUN git clone https://github.com/I2PC/scipion.git
WORKDIR "/home/scipion"
RUN ./scipion config




