# Project Name: Python Multi-Stage Pipeline

## Description

This Jenkins pipeline project checks the Python and Pip versions installed on an AWS EC2 instance using Docker containers. It provides a simple and automated way to verify the Python environment without affecting your local system.

## What It Does

The pipeline consists of the following stages:

1. **Check Python Version**: Retrieves and prints the version of Python installed on the EC2 instance.
2. **Check Pip Version**: Retrieves and prints the version of Pip installed on the EC2 instance.
3. **End**: Marks the successful completion of the pipeline by printing a message.

## Cloud-Based Execution

This project is entirely cloud-based and runs on AWS EC2 instances. It leverages Docker containers to ensure isolation and reproducibility of the environment. By utilizing cloud resources, you can execute the pipeline without impacting your local development environment.

## Multi-Agent System Benefits

The use of a multi-agent system in Jenkins offers several advantages:

- **Scalability**: Multiple agents can handle concurrent builds, allowing for faster execution of pipelines.
- **Resource Isolation**: Each agent operates in its own environment, ensuring that builds are isolated and do not interfere with each other.
- **Flexibility**: Agents can be configured with different tools and dependencies, enabling diverse build scenarios.
- **Simplified Management**: There is no need to schedule separate worker nodes for your application components, as the multi-agent system efficiently     
  manages resources.

## To use this pipeline:

1. Install Jenkins on your server.
2. Configure Jenkins to use Docker agents.
3. Create a new pipeline project in Jenkins.
4. Copy the pipeline script (Jenkinsfile) from this repository.
5. Run the pipeline, and it will automatically check Python and Pip versions on your EC2 instance.



