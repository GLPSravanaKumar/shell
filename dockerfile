ARG version
FROM ubuntu:${version}
RUN mkdir roboshop
ENV region=us-east-1
ENV app_user=roboshop
WORKDIR /roboshop
COPY sample-1.tar /roboshop/
ADD sample-1.tar /roboshop/
ADD curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" /roboshop/
CMD ["/bin/bash"]