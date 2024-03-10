# AWS EC2: Vault Integration Project

## Description

This project demonstrates the integration of HashiCorp Vault with AWS EC2 instances using Terraform. It automates the provisioning of EC2 instances and retrieves secrets from Vault to configure instances securely.

## What It Does

The workflow consists of the following steps:

1. **AWS Infrastructure Provisioning**: Defines and provisions an EC2 instance on AWS using Terraform.
2. **Vault Integration**: Configures Terraform to authenticate with Vault and retrieve secrets for use in EC2 instance configurations.
3. **EC2 Instance Configuration**: Tags the EC2 instance with metadata retrieved from Vault, ensuring secure and dynamic configuration.

## HashiCorp Vault

HashiCorp Vault provides a centralized and secure solution for managing secrets, encryption keys, and other sensitive data. This project showcases Vault's integration capabilities with AWS EC2 instances to enhance security and manage secrets effectively.

### Setting Up AppRole Authentication

AppRole authentication method allows machines or services to authenticate with Vault and obtain a set of credentials (role_id and secret_id) to access secrets.

1. **Enable AppRole Authentication**:
   - Enable the AppRole authentication method in Vault:
     ```shell
     vault auth enable approle
     ```

2. **Create AppRole**:
   - Create a new AppRole and assign policies to it:
     ```shell
     vault write auth/approle/role/my-role policies=my-policy
     ```

3. **Generate Role ID and Secret ID**:
   - Generate a role_id for the AppRole:
     ```shell
     vault read auth/approle/role/my-role/role-id
     ```
   - Generate a secret_id for the AppRole:
     ```shell
     vault write -f auth/approle/role/my-role/secret-id
     ```

## How to Use

1. **Set Up AWS Credentials**:
   - Ensure you have AWS credentials configured with appropriate permissions for Terraform to interact with AWS services.

2. **Set Up HashiCorp Vault**:
   - Install and configure HashiCorp Vault with the required secrets and authentication methods, including the AppRole authentication method.

3. **Review and Customize Terraform Configurations**:
   - Modify the `Main.tf` file to adjust configurations such as AWS region, EC2 instance type, Vault address, and secret retrieval parameters according to your requirements.

4. **Initialize Terraform**:
   - Run the following command to initialize the project:
     ```bash
     terraform init
     ```

5. **Plan Terraform Changes**:
   - Generate an execution plan to review proposed changes:
     ```bash
     terraform plan
     ```

6. **Deploy AWS EC2 Instances**:
   - Execute the following command to apply the Terraform configurations and provision EC2 instances:
     ```bash
     terraform apply
     ```

7. **Access the EC2 Instances**:
   - Once Terraform completes provisioning, access the EC2 instances using the AWS Management Console or command-line tools.

## Note:

Before using this project:
- Ensure that AWS credentials are properly configured to allow Terraform to interact with your AWS account.
- Set up HashiCorp Vault with appropriate secrets and authentication methods, including the AppRole authentication method, and adjust Vault configurations in `Main.tf` accordingly.
- Review and customize Terraform configurations to match your specific requirements, including security group settings and instance tagging.
- Handle sensitive information securely and avoid exposing secrets in Terraform configuration files or version control systems.
