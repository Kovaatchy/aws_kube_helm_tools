# aws_kube_helm_tools
Dockerfile aws kubectl helm tools

# Dockerfile Readme

This repository contains a Dockerfile that sets up a Debian 12 (Slim) container with several useful tools installed. The Docker image is designed to be lightweight and includes the following packages:

1. Essential utilities: `curl`, `git`, `gnupg2`, `python`, `python3-pip`, `vim`, `wget`, and `unzip`.
2. PostgreSQL Client: The container includes the PostgreSQL client version 14, allowing you to interact with PostgreSQL databases.
3. AWS CLI: The official AWS Command Line Interface (CLI) is installed, enabling you to manage your AWS resources from within the container.
4. Kubernetes CLI (kubectl): The Kubernetes command-line tool (kubectl) is available, allowing you to interact with Kubernetes clusters.
5. Helm: The container includes Helm version 3, a popular package manager for Kubernetes.

## Usage

To build the Docker image, navigate to the directory containing the `Dockerfile` and run the following command:

```bash
docker build -t <image_name> .
