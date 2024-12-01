# Cloud & DevOps Engineer Assessment Task

## Overview

This task involves deploying a simple static web application to a cloud-based Kubernetes environment and ensuring proper monitoring is set up using **Prometheus**. The application will be exposed using a **NodePort** service to make it accessible externally.

## Application Functionality

The application serves a basic static web page (e.g., "WEL-COME TO THE ATC APPLICATION"), and it is containerized using Docker. This containerized web application is deployed onto a Kubernetes cluster, with Prometheus set up for monitoring.

## Key Components

### 1. Infrastructure as Code (IaC) with Terraform

Terraform is used to provision the cloud resources required for the application. This includes setting up the following components:
- **VPC (Virtual Private Cloud)**: Provides network isolation.
- **Subnets**: Both public and private subnets to handle different parts of the application.
- **Kubernetes Cluster**: The heart of the solution, where the web application will be deployed (EKS, AKS, or other cloud Kubernetes services can be used).
- **Security Groups**: To ensure only authorized traffic can reach the Kubernetes cluster.
  
### 2. Kubernetes Deployment

The web application is deployed in Kubernetes using the following resources:

- **Deployment**: Defines the application, such as the container image, environment variables, and number of replicas.
- **Service**: Exposes the application to the external world using a **NodePort**. This allows you to access the application on a specific port on the Kubernetes nodes.

**NodePort** allows traffic to reach the application by mapping an internal Kubernetes service port to a port on the external node IP. For example, the application might be accessible on port `30080` on any of the nodes in the Kubernetes cluster.

### 3. Dockerfile

The web application is containerized using Docker. The Dockerfile defines how the application is built and run inside the container. The web application content (e.g., an HTML file) is copied into the container, and the web server (like Nginx) is used to serve the content.

### 4. Prometheus Monitoring

Prometheus is used to collect and store metrics from the application and the Kubernetes cluster. A configuration file is created to tell Prometheus where to scrape metrics from (e.g., Kubernetes nodes, pods, or services).

Prometheus is deployed as a container within the Kubernetes cluster, and it continuously collects metrics that can be used for monitoring and alerting.

### 5. Deployment Steps

Here’s a high-level overview of the steps to deploy the solution:

1. **Provision Cloud Infrastructure**: Use Terraform to create all the necessary cloud resources, such as the Kubernetes cluster, networking (VPC), subnets, and security groups.
   
2. **Build the Docker Image**: Containerize the web application using Docker. The Dockerfile is used to build the application container.

3. **Push the Docker Image**: Push the container image to a container registry (e.g., Docker Hub, AWS ECR, etc.), making it available for deployment.

4. **Deploy to Kubernetes**: Use Kubernetes manifests (YAML files) to deploy the application. This includes:
   - A **Deployment** to specify the application details and number of replicas.
   - A **Service** of type **NodePort** to expose the application on a specific port on the Kubernetes node IPs.
   
5. **Set Up Prometheus Monitoring**: Deploy Prometheus to the Kubernetes cluster. Configure it to scrape metrics from the Kubernetes nodes and application services. This helps monitor the health of the application and the infrastructure.

6. **Verify the Deployment**: After deploying the application, ensure everything is running correctly. Check the status of the pods and services in Kubernetes and ensure the application is accessible through the assigned NodePort.

7. **Access the Application and Monitoring**:
   - **Web Application**: Access the application through the external node IP and NodePort (e.g., `http://<Node-IP>:30080`).
   - **Prometheus Dashboard**: Access the Prometheus monitoring dashboard (typically on port 9090) to view the metrics collected from the application.

## Conclusion

This solution involves provisioning a cloud-based Kubernetes environment using Terraform, deploying a simple web application, exposing it using NodePort, and monitoring it using Prometheus. The setup ensures that the application is easily accessible externally, and its performance and health are actively monitored.

## Screenshots
![cluster created](https://github.com/AnandPattanashetti/cloud-devops-task/blob/main/Screenshot%20(722).png)
![clusters](https://github.com/AnandPattanashetti/cloud-devops-task/blob/main/Screenshot%20(720).png)
![clusters](https://github.com/AnandPattanashetti/cloud-devops-task/blob/main/Screenshot%20(721).png)
![cluster created](https://github.com/AnandPattanashetti/cloud-devops-task/blob/main/Screenshot%20(722).png)
![pods running](https://github.com/AnandPattanashetti/cloud-devops-task/blob/main/Screenshot%20(719).png)

![the application](https://github.com/AnandPattanashetti/cloud-devops-task/blob/main/Screenshot%20(725).png)



