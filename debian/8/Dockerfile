FROM debian:8

# SSH Setting
RUN apt update && apt install -y openssh-server
RUN mkdir /var/run/sshd

RUN sed -i 's/#\?PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

COPY .ssh/id_rsa.pub /root/authorized_keys
RUN mkdir ~/.ssh && \
    mv ~/authorized_keys ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys

EXPOSE 22

# Vuls Setting
# RUN apt install -y reboot-notifier
RUN apt install -y lsof
RUN DEBIAN_FRONTEND=noninteractive apt install -y debian-goodies

CMD ["/usr/sbin/sshd", "-D"]
