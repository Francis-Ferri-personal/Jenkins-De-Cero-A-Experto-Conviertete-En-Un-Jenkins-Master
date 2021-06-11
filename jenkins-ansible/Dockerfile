FROM jenkins/jenkins

# Se cambia al usuario root porque el usuario jenkins no tienen permiso para instalar
USER root

RUN apt install python3-pip
    
RUN pip3 install ansible

USER jenkins
