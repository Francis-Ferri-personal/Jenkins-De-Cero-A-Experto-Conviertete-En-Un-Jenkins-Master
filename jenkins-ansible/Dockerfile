FROM jenkins/jenkins

# Se cambia al usuario root porque el usuario jenkins no tienen permiso para instalar
USER root

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    apt update && apt install python && \
    python get-pip.py

# Instala ansible y actualiza pip
RUN pip install -U ansible

USER jenkins
