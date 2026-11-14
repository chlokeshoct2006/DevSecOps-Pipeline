# DevSecOps Advanced CI/CD Pipeline

An end-to-end CI/CD pipeline demonstrating automated infrastructure provisioning, application building, code quality analysis, artifact management, containerization, Kubernetes deployment, and monitoring.

## Overview

This project demonstrates a DevOps automation workflow using infrastructure as code, configuration management, continuous integration, artifact management, containerization, Kubernetes, and monitoring tools.

The application is built using **Java, Spring Boot, and Maven**.

## Technology Stack

| Category | Tools |
|---|---|
| Application | Java, Spring Boot |
| Build Management | Maven |
| Infrastructure as Code | Terraform |
| Configuration Management | Ansible |
| CI/CD | Jenkins |
| Code Quality | SonarQube |
| Artifact Management | JFrog Artifactory |
| Containerization | Docker |
| Container Orchestration | Kubernetes, AWS EKS |
| Deployment | Helm |
| Monitoring | Prometheus, Grafana |
| Source Control | Git, GitHub |

## Pipeline Workflow

1. Provision cloud infrastructure using Terraform.
2. Configure SSH connectivity between infrastructure nodes.
3. Install and configure Jenkins using Ansible.
4. Integrate Jenkins master and agent nodes.
5. Configure GitHub integration.
6. Configure webhook-based pipeline triggers.
7. Integrate SonarQube for code analysis and quality-gate validation.
8. Configure JFrog Artifactory for artifact management.
9. Build and publish Docker images.
10. Configure an Amazon EKS cluster.
11. Deploy the application to Kubernetes using Helm.
12. Configure Prometheus and Grafana for monitoring.

## Project Structure

```text
DevSecOps-Advanced-CICD-Pipeline/
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   └── resources/
│   └── test/
│
├── Steps/
│   ├── step1.md
│   ├── step2.md
│   ├── step3.md
│   ├── step4.md
│   ├── step5.md
│   ├── step6.md
│   ├── step7.md
│   ├── step8.md
│   ├── step9.md
│   ├── step10.md
│   ├── step11.md
│   └── step12.md
│
├── Dockerfile
├── Jenkinsfile
├── pom.xml
├── deploy.sh
├── deployment.yaml
├── service.yaml
├── namespace.yaml
├── sonar-project.properties
└── README.md
```

## Implementation Guides

Detailed implementation instructions are available in the `Steps` directory:

| Step | Implementation |
|---|---|
| 1 | [Infrastructure Provisioning](Steps/step1.md) |
| 2 | [SSH Configuration](Steps/step2.md) |
| 3 | [Jenkins Setup](Steps/step3.md) |
| 4 | [Jenkins Master-Agent Integration](Steps/step4.md) |
| 5 | [GitHub Integration](Steps/step5.md) |
| 6 | [Webhook Configuration](Steps/step6.md) |
| 7 | [SonarQube Integration](Steps/step7.md) |
| 8 | [JFrog Artifactory Integration](Steps/step8.md) |
| 9 | [Docker Build and Publish](Steps/step9.md) |
| 10 | [Amazon EKS Setup](Steps/step10.md) |
| 11 | [Kubernetes Deployment](Steps/step11.md) |
| 12 | [Prometheus and Grafana Monitoring](Steps/step12.md) |

## Getting Started

### Prerequisites

Before implementing the complete pipeline, prepare:

- Java 8-compatible JDK
- Apache Maven
- Git and GitHub account
- Docker
- Jenkins with the required plugins
- SonarQube server
- JFrog Artifactory account
- AWS account and AWS CLI
- Terraform and Ansible
- kubectl, Helm, and an Amazon EKS cluster

### Clone the Repository

```bash
git clone https://github.com/chlokeshoct2006/DevSecOps-Advanced-CICD-Pipeline.git
cd DevSecOps-Advanced-CICD-Pipeline
```

### Build the Application

```bash
mvn clean package
```

### Run the Application

```bash
mvn spring-boot:run
```

The application runs using the Spring Boot configuration in `src/main/resources/application.properties`.

## Jenkins Pipeline

The `Jenkinsfile` defines the automation stages, including:

- Maven build
- Unit-test report generation
- SonarQube analysis
- Quality-gate validation
- JFrog artifact publishing
- Docker image build and publishing
- Helm-based deployment

**Configuration required:** Update the Jenkins tool names, credentials IDs, JFrog registry, image repository, Kubernetes access, and deployment configuration to match your own environment before running the pipeline.

## Kubernetes Deployment

The repository includes Kubernetes resource manifests:

- `namespace.yaml`
- `deployment.yaml`
- `service.yaml`

The pipeline also references the Helm chart package `sample-app-1.0.1.tgz`.

Configure the container image, namespace, registry credentials, and cluster access before deployment.

## Monitoring

Prometheus and Grafana are used in the documented workflow to monitor the Kubernetes deployment and visualize metrics.

## Security Notes

- Never commit AWS access keys, passwords, API tokens, or Docker credentials.
- Configure Jenkins credentials securely using the Jenkins Credentials Manager.
- Keep Kubernetes Secret manifests and real credential values out of Git.
- Replace original infrastructure and registry configuration with your own environment-specific settings.
- SonarQube analysis and quality-gate validation are included; additional security scanning should be configured separately if required.

## Original Project Attribution

This repository is based on the original project maintained by **[Harshhaa](https://github.com/NotHarshhaa)**.

Original source: [NotHarshhaa/DevOps-Projects – DevOps-Project-06](https://github.com/NotHarshhaa/DevOps-Projects/tree/master/DevOps-Project-06)

The original project documentation and implementation have been retained and adapted with permission from the original author. Please refer to the original repository for its original context and contributions.

## Author

**Lokesh Chaudhary**

- GitHub: [@chlokeshoct2006](https://github.com/chlokeshoct2006)
- LinkedIn: [Lokesh Chaudhary](https://linkedin.com/in/lokesh-chaudhary-/)

---

This repository is maintained as a learning and implementation project for cloud infrastructure, DevOps automation, CI/CD, containerization, and Kubernetes deployment.
