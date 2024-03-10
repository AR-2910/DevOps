# Terraform 

Terraform is an open-source infrastructure as code (IaC) tool that enables users to define and provision infrastructure using a declarative configuration language. With Terraform, infrastructure is defined in code, allowing for version control, automation, and consistency across environments.

## Projects

1. **AWS EC2: S3 Remote Backend Project**:
         This project automates the provisioning of AWS EC2 instances while utilizing an S3 bucket as a remote backend for Terraform state file storage. It simplifies the management of AWS infrastructure by storing Terraform state file remotely, promoting collaboration and version control.

2. **AWS EC2: Flask Web Application**:
        This project automates the deployment of a Flask web application on an AWS EC2 instance using Terraform for infrastructure provisioning and configuration management.
   
3. **AWS EC2: Vault Integration**:
         This project demonstrates the integration of HashiCorp Vault with AWS EC2 instances using Terraform. It automates the provisioning of EC2 instances and retrieves secrets from Vault to configure instances securely.

## Key Benefits

- **Infrastructure as Code (IaC)**: Terraform enables infrastructure provisioning and management through code, enhancing scalability, automation, and collaboration.
- **Multi-Cloud Provisioning**: With support for multiple cloud providers, Terraform offers flexibility and avoids vendor lock-in.
- **Simplified Configuration Management**: Terraform's declarative syntax simplifies infrastructure configuration and management, promoting consistency and reducing human error.
- **Integration with External Services**: Terraform can integrate with various external services and tools, enabling seamless workflows and automation.

## Setup and Prerequisites

1. **Terraform Installation**:
   - Install Terraform by following the instructions provided in the official documentation: [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)

2. **AWS CLI Setup**:
   - Configure AWS CLI with appropriate credentials by running `aws configure` and providing your AWS Access Key ID, Secret Access Key, default region, and output format.

3. **Basic Terraform Commands**:
   - Initialize Terraform in your project directory:
     ```bash
     terraform init
     ```
   - Generate and review an execution plan before making any changes:
     ```bash
     terraform plan
     ```
   - Apply the Terraform configuration to create or update resources:
     ```bash
     terraform apply
     ```

## Resources
Below are the resources where I learned about Terraform and its best practices:

- [Terraform Documentation](https://www.terraform.io/docs/index.html)
- [Terraform GitHub Repository](https://github.com/hashicorp/terraform)
- [Terraform Tutorial](https://www.youtube.com/playlist?list=PLdpzxOOAlwvI0O4PeKVV1-yJoX2AqIWuf)
