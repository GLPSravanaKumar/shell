ARG version
FROM ubuntu:${version}
RUN mkdir roboshop
ENV region=us-east-1
ENV app_user=roboshop
WORKDIR /roboshop
ADD sample-1.tar /roboshop/
CMD ["/bin/bash"]