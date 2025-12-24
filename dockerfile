ARG version
FROM ubuntu:${version}
RUN mkdir roboshop
WORKDIR /roboshop
CMD ["/bin/bash"]