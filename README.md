# 🌟 Deploying EKS Cluster using Terraform and Jenkins

This repository demonstrates a robust and scalable infrastructure-as-code solution for automating the deployment of an NGINX application on an EKS cluster using Terraform and Jenkins.

## 🚀 Overview

This project includes the following components:
- **Jenkins Server**: Deployed on an EC2 instance with `kubectl` for managing Kubernetes clusters.
- **EKS Cluster**: Created using Terraform modules from the Terraform registry and integrated with a custom VPC.
- **NGINX Deployment**: Configuration files for deploying an NGINX application on the EKS cluster.
- **Jenkins Pipeline**: Automated pipeline for seamless deployment of the EKS cluster and the NGINX application.

## 📋 Prerequisites

Ensure you have the following before getting started:
- **AWS Access Keys**: Configured both keys in Jenkins credentials.
- **Key Pair**: Available in your preferred AWS account's region.
- **S3 Bucket**: For storing Terraform state files for both the Jenkins server and EKS cluster.

## 🛠️ Project Steps

### 1. Jenkins Server Setup

An EC2 instance is set up with Jenkins and `kubectl` installed for managing the Kubernetes cluster.

### 2. EKS Cluster Creation

Terraform modules are used to create the EKS cluster and configure the VPC.

### 3. NGINX Deployment Configuration

Deployment configuration files are created for deploying the NGINX application on the EKS cluster.

### 4. Jenkins Pipeline

A Jenkins pipeline is set up to automate the deployment process.

## 📑 Detailed Steps

1. **Jenkins Server Setup**: Initialize an EC2 instance with user data to install Jenkins and `kubectl`.
2. **EKS Cluster Creation**: Use Terraform modules to create the EKS cluster within a custom VPC.
3. **NGINX Deployment**: Prepare deployment configuration files for the NGINX application.
4. **Jenkins Pipeline**: Set up a Jenkins pipeline for continuous deployment and management of the EKS cluster and the NGINX application.

## 🌐 Additional Information

- **AWS Credentials**: Securely manage your AWS credentials in Jenkins.
- **S3 Bucket**: Ensure the S3 bucket is correctly set up to store Terraform state files.
- **Jenkins Pipeline**: Customize the Jenkins pipeline to fit your deployment needs.
