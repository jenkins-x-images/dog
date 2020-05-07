FROM centos:7

# Set the locale(en_US.UTF-8)
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y unzip \
                   which \
                   make \
                   wget \
                   python-pip && \
    pip install datadog
