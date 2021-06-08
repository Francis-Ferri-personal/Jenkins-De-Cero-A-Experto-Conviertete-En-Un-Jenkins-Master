FROM centos

RUN yum -y install openssh-server

RUN yum install -y passwd

# Add a new user and set the password through a pipeline to avoid manual input
RUN useradd remote_user && \
    echo "1234" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.shh && \
    chmod 700 /home/remote_user/.ssh
     
# Copy the public key to the container
COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

#  Change the owner of the file from root to remote_user
RUN chown remote_user:remote_user -R  /home/remote_user && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

# Esto es un truco por que los contenedores no hacen este proceso automaticamente el cual si se hace en la distro
# Se envia la salida a dev/null por que da un pequeño errorsito 
RUN /usr/sbin/sshd-kegen > /dev/null 2>&1

# El -D es modo en primer plano
CMD /usr/sbin/sshd -D