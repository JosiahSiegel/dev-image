# dev-image

[![(Release) Release dev container templates](https://github.com/JosiahSiegel/dev-image/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/JosiahSiegel/dev-image/actions/workflows/release.yml)

>The Dockerfile sets up a development environment for an Azure CLI application. It installs the necessary dependencies, exposes port 2222 for SSH access, copies an entrypoint script, and starts an SSH service.

(Optional) `app` user password can be set by environment variable "USER_PASSWORD". This can be set in the host (e.g. container app) or set in a file with path `.devcontainer/devcontainer.env`.
