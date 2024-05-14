FROM amazonlinux:1

RUN yum update -y && yum install -y openssh-server glibc-langpack-en
RUN mkdir /var/run/sshd

RUN sed -i 's/#\?PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

COPY .ssh/id_rsa.pub /root/authorized_keys
RUN mkdir -p ~/.ssh && \
    mv ~/authorized_keys ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys

# SSH connection by root user fails, so add ec2-user (=SSH connection by ec2-user)
RUN yum install -y shadow-utils
RUN groupadd -g 500 ec2-user && \
    adduser -u 500 -g 500 ec2-user && \
    usermod -aG wheel ec2-user && \
    mkdir -m 0700 /home/ec2-user/.ssh
COPY .ssh/id_rsa.pub /home/ec2-user/.ssh/authorized_keys
RUN chmod 0600 /home/ec2-user/.ssh/authorized_keys && \
    chown -R ec2-user.ec2-user /home/ec2-user/.ssh
RUN yum install -y sudo
RUN echo "ec2-user ALL = NOPASSWD: ALL" > /etc/sudoers.d/cloud-init
RUN echo "ec2-user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/cloud-init
RUN chmod 0440 /etc/sudoers.d/cloud-init

RUN ssh-keygen -A
RUN rm -rf /run/nologin

EXPOSE 22

# Vuls Setting
RUN yum install -y yum-utils which lsof

CMD ["/usr/sbin/sshd", "-D"]