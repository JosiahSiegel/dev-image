# This Dockerfile sets up a development environment for an Azure CLI application.
# It installs the necessary dependencies, exposes port 2222 for SSH access,
# copies an entrypoint script, and starts the SSH service.
# (Optional) Set host environment variable "USER_PASSWORD"
FROM mcr.microsoft.com/azure-dev-cli-apps:latest

RUN apt update
RUN apt install openssh-server sudo vim -y
RUN echo "Port 2222" >> /etc/ssh/sshd_config
RUN usermod -aG sudo app
EXPOSE 2222

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD service ssh start && tail -F /run/sshd.pid
