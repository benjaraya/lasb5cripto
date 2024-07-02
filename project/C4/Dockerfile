FROM ubuntu:22.04

# Actualizar y agregar URIs deb-src
RUN sed -i '/^# deb-src/s/^# //' /etc/apt/sources.list
RUN apt-get update

# Instalar paquetes necesarios
RUN apt-get install openssh-server openssh-client zlib1g-dev libssl-dev autoconf automake libtool -y
RUN apt-get install dpkg-dev nano --fix-missing -y
RUN apt-get source openssh-client

# Configurar el servidor SSH
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Crear usuario "prueba" con contraseña "prueba"
RUN useradd -m -d /home/prueba prueba
RUN echo 'prueba:prueba' | chpasswd

# Exponer el puerto 22
EXPOSE 22

# Ejecutar el servidor SSH
CMD ["/usr/sbin/sshd", "-D"]

