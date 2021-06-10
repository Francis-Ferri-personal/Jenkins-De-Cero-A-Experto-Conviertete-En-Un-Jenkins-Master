FROM jenkins/jenkins

# Se cambia al usuario root porque el usuario jenkins no tienen permiso para instalar
USER root

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt update
    
RUN apt install ansible

USER jenkins
