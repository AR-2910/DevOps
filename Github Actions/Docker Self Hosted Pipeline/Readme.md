# Project Name: Docker Self Hosted Pipeline

## Description

This project automates the deployment of a Dockerized application using GitHub Actions with self-hosted runners. It simplifies the deployment process by orchestrating the checkout of code, building of Docker image, and pushing of Docker image to Docker Hub.

## What It Does

The workflow consists of the following steps:

- **Checkout code**: Retrieves the code from the repository.
- **Build Docker image**: Builds the Docker image for the application using the Dockerfile in the repository.
- **Push Docker image to Docker Hub**: Pushes the built Docker image to Docker Hub, making it available for deployment.

## GitHub Hosted Execution

This project utilizes GitHub Actions with self-hosted runners to automate the deployment process. Self-hosted runners are used to execute the workflow, ensuring that deployment tasks are performed in an isolated and controlled environment. Self-hosted runners help handle infrastructure and compute resources, ensuring consistent dependency management, isolation from external threats, access controls, and maintaining configuration consistency through logging and monitoring.

## Benefits

- **Automation**: The workflow automates the deployment process, reducing manual intervention and potential errors.
- **Efficiency**: By streamlining the deployment pipeline, the workflow enhances development efficiency and accelerates deployment cycles.
- **Control**: Utilizing self-hosted runners provides greater control over the deployment environment, allowing customization and flexibility.
- **Scalability**: The workflow scales effortlessly to handle deployment tasks for projects of any size, accommodating the needs of diverse development teams.

## How to Use

1. **Set Up Self-Hosted Runner**:
   - Configure and connect your self-hosted runner machine to your GitHub repository by navigating to your desired project repo, then go to Settings and follow the steps to create a self-hosted runner. You can set up multiple self-hosted runners for scalability and redundancy.

2. **Create Workflow File**:
   - Create a new workflow file in the `.github/workflows` directory of your repository.

3. **Configure Self-Hosted Runner in Workflow**:
   - Specify `self-hosted` as the value for the `runs-on` parameter in the workflow file to ensure that the workflow runs on your self-hosted runner. 

4. **Set Up Secrets**:
   - Store your Docker Hub credentials (`DOCKER_USERNAME` and `DOCKER_PASSWORD`) as GitHub secrets in your repository settings. These secrets will be used for authentication during the Docker image push.

5. **Commit and Push Changes**:
   - Commit and push the changes to your repository. This will trigger the GitHub Actions workflow, which will automate the deployment process for your Dockerized application.

### Note:

Before using this workflow:

- Ensure that your self-hosted runner machine is properly configured and connected to your GitHub repository.
- Securely store your Docker Hub credentials as GitHub secrets to enable authentication during the Docker image push.
- Modify the Docker Hub details (username, image name, repository name) in the workflow file to match your Docker Hub configuration.

