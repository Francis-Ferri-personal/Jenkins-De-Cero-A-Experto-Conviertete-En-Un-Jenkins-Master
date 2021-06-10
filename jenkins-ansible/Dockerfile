FROM jenkins/jenkins

# Se cambia al usuario root porque el usuario jenkins no tienen permiso para instalar
USER root

RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    sudo apt update && \
    sudo apt install ansible

# Instala ansible y actualiza pip
RUN pip install -U ansible

USER jenkins
