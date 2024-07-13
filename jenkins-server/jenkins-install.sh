#!/bin/bash

# Install Jenkins
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Install Git
sudo yum install git -y

# Install Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum install terraform -y

# Install kubectl (latest stable version)
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mkdir -p $HOME/bin
sudo cp ./kubectl $HOME/bin/kubectl
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
source ~/.bashrc

# Verify installations
echo "Verifying installations:"
jenkins_version=$(jenkins --version 2>/dev/null)
echo "Jenkins version: ${jenkins_version:-'Not installed'}"
git_version=$(git --version 2>/dev/null)
echo "Git version: ${git_version:-'Not installed'}"
terraform_version=$(terraform -v 2>/dev/null | head -n 1)
echo "Terraform version: ${terraform_version:-'Not installed'}"
kubectl_version=$(kubectl version --client --short 2>/dev/null)
echo "Kubectl version: ${kubectl_version:-'Not installed'}"
