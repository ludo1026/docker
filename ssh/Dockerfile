FROM ubuntu:14.04
 
# --- docker build ---
# Install
RUN apt-get update
RUN apt-get install -y locate nano software-properties-common
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
 
# Users
RUN useradd -m -p docker docker
RUN echo 'docker:docker' |chpasswd
RUN echo 'root:docker' |chpasswd
 
# Network : port 22
EXPOSE 22
 
# --- docker run ---
CMD    ["/usr/sbin/sshd", "-D"]
