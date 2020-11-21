#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:18.04

# Run Update & upgrade
RUN apt-get update -y && apt-get upgrade -y

# Install essentials
RUN apt-get install software-properties-common -y
RUN apt-get install build-essential -y

# Install Python
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.8 -y
# Set Python 3.8 to default
#Set Python to default
RUN alias python='/usr/bin/python3.8'
RUN . ~/.bashrc

# Run Update & upgrade
RUN apt-get update -y && apt-get upgrade -y

# Install Ansible
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt install ansible -y

# Run Update & upgrade
RUN apt-get update -y && apt-get upgrade -y

# Install Ansible Collections
RUN ansible-galaxy collection install check_point.mgmt
RUN ansible-galaxy collection install fortinet.fortios
RUN ansible-galaxy collection install cisco.ios

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]