ARG version=23.04
FROM ubuntu:${version}
RUN mkdir roboshop
WORKDIR /roboshop
CMD ["/bin/bash"]