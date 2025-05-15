FROM ubuntu:20.04

# SSH Setting
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd

RUN sed -i 's/#\?PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

COPY .ssh/id_rsa.pub /root/authorized_keys
RUN mkdir -p ~/.ssh && \
    mv ~/authorized_keys ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys

EXPOSE 22

# Vuls Setting
RUN apt-get install -y lsof iproute2
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y debian-goodies

CMD ["/usr/sbin/sshd", "-D"]
