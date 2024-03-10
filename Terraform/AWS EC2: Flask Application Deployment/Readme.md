# AWS EC2: Flask Application Deployment Project

## Description

This project automates the deployment of a Flask web application on an AWS EC2 instance using Terraform for infrastructure provisioning and configuration management. It leverages Terraform provisioners to execute commands and manage resources beyond infrastructure setup, enabling seamless deployment of the web application.

## What It Does

The workflow consists of the following steps:

1. **Initialize Terraform**: Sets up Terraform and initializes the project.
2. **Provision EC2 Instance**: Defines and provisions an EC2 instance on AWS.
3. **Deploy Flask Application**: Transfers the Flask web application code to the EC2 instance and configures it to run using Terraform provisioners.

## Provisioners

Terraform provisioners enable the execution of commands and scripts during the infrastructure provisioning process. They facilitate tasks beyond resource management, such as software installation, configuration, and application deployment.

### Remote Exec Provisioner

The `remote-exec` provisioner allows the execution of commands on the provisioned EC2 instance. In this project, it installs Python dependencies, transfers the Flask application code, and starts the application.

### Local Exec Provisioner

While not used in this project, the `local-exec` provisioner executes commands on the machine running Terraform, enabling local tasks during provisioning. It can be useful for tasks like local file manipulation or running scripts before or after provisioning resources.

## How to Use

1. **Set Up AWS Credentials**:
   - Ensure you have AWS credentials configured with appropriate permissions for Terraform to interact with AWS services.

2. **Initialize Terraform**:
   - Run the following command to initialize the project:
     ```bash
     terraform init
     ```

3. **Review and Customize Terraform Configurations**:
   - Modify the `Main.tf` file to adjust configurations such as AWS region, instance type, and key pair name according to your requirements.

4. **Deploy Flask Application**:
   - Execute the following command to apply the Terraform configurations and deploy the Flask application:
     ```bash
     terraform apply
     ```

5. **Access the Flask Application**:
   - Once Terraform completes provisioning, access the Flask application by navigating to the public IP address of the EC2 instance in a web browser.

## Note:

Before using this project:
- Ensure that AWS credentials are properly configured to allow Terraform to interact with your AWS account.
- Review and customize Terraform configurations to match your specific requirements, including security group settings and key pair selection.
- Set up security group access configurations properly to allow inbound traffic on necessary ports (e.g., port 80 for HTTP access to the Flask application).
