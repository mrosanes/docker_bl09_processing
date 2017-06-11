FROM mrosanes/docker_bl09_processing:checkout_scipion_code

RUN ./scipion install -j 4
RUN rm -rf sofware/tmp/*
RUN rm -rf sofware/em/*.tgz
WORKDIR "/"

# Export Path to allow running scipion
RUN export PATH=$PATH:/home/scipion/

CMD ["/bin/bash"]


