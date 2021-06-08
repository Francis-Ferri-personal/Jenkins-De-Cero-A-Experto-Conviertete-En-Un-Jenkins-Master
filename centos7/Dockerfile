FROM centos

RUN yum -y install openssh-server

RUN yum install -y passwd

# Add a new user and set the password through a pipeline to avoid manual input
RUN useradd remote_user && \
    echo "1234" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh
     
# Copy the public key to the container
COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

#  Change the owner of the file from root to remote_user
RUN chown remote_user:remote_user -R  /home/remote_user && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

# El -D es modo en primer plano
CMD /usr/sbin/sshd -D