ARG version
FROM ubuntu:${version}
RUN mkdir roboshop
ENV region=us-east-1
WORKDIR /roboshop
CMD ["/bin/bash"]