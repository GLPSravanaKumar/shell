ARG version
FROM ubuntu:${version}
RUN mkdir roboshop
ENV region=us-east-1
ENV app_user=roboshop
WORKDIR /roboshop
COPY sample-1.tar /roboshop/
ADD sample-1.tar /roboshop/
RUN curl -fsSL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf aws awscliv2.zip
CMD ["/bin/bash"]