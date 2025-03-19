FROM registry.access.redhat.com/ubi9/ubi:latest

ARG RHEL_USERNAME
ARG RHEL_PASSWORD

RUN subscription-manager register --username=${RHEL_USERNAME} --password=${RHEL_PASSWORD} --autosubscribe
RUN dnf upgrade -y && dnf install -y openssh-server glibc-langpack-en
RUN mkdir /var/run/sshd

RUN sed -i 's/#\?PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

COPY .ssh/id_rsa.pub /root/authorized_keys
RUN mkdir -p ~/.ssh && \
    mv ~/authorized_keys ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys

RUN ssh-keygen -A
RUN rm -rf /run/nologin

EXPOSE 22

# Vuls Setting
RUN dnf install -y which lsof iproute

CMD ["/usr/sbin/sshd", "-D"]