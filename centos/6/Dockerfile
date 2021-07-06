FROM centos:6

RUN sed -i "s|#baseurl=|baseurl=|g" /etc/yum.repos.d/CentOS-Base.repo \
  && sed -i "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-Base.repo \
  && sed -i "s|http://mirror\.centos\.org/centos/\$releasever|https://vault\.centos\.org/6.10|g" /etc/yum.repos.d/CentOS-Base.repo

RUN yum -y update && yum -y install openssh-server glibc-langpack-en
RUN mkdir /var/run/sshd

RUN sed -i 's/#\?PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

COPY .ssh/id_rsa.pub /root/authorized_keys
RUN mkdir ~/.ssh && \
    mv ~/authorized_keys ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys

RUN ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN rm -rf /run/nologin

EXPOSE 22

# Vuls Setting
RUN yum -y install yum-utils which lsof

CMD ["/usr/sbin/sshd", "-D"]