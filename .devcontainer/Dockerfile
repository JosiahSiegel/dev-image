FROM mcr.microsoft.com/azure-dev-cli-apps:latest

RUN apt update
RUN apt install openssh-server sudo -y
RUN echo "Port 2222" >> /etc/ssh/sshd_config
RUN usermod -aG sudo app

RUN service ssh start

EXPOSE 2222
