
# 🚀 Flask CI/CD, Helm & Kubernetes Deployment Project

A production-style DevOps project demonstrating the end-to-end lifecycle of deploying a Python Flask application using **Docker**, **GitHub Actions**, **Kubernetes (Minikube)**, **Helm**, and **Monitoring with Prometheus & Grafana**.

This project was built to gain hands-on experience with modern DevOps practices, including containerization, continuous integration, Kubernetes deployment, configuration management, scaling, self-healing, persistent storage, and observability.

---

## 📖 Project Overview

This project begins with a simple Flask web application and gradually evolves into a Kubernetes-based production-style deployment.

The application is:

* Containerized using Docker
* Validated automatically using GitHub Actions
* Deployed on a Kubernetes cluster (Minikube)
* Packaged and managed using Helm
* Exposed using Kubernetes NodePort and Ingress
* Configured using ConfigMap and Secret
* Protected with Liveness and Readiness probes
* Scaled using Horizontal Pod Autoscaler (HPA)
* Connected to Persistent Volume and Persistent Volume Claim
* Monitored using Prometheus and Grafana

---

## 🛠 Technologies Used

* Python
* Flask
* Docker
* Git
* GitHub
* GitHub Actions
* Kubernetes
* Minikube
* Helm
* Prometheus
* Grafana

---

## ✨ Features

* Dockerized Flask application
* GitHub Actions CI pipeline
* Kubernetes Deployment
* Kubernetes Service
* ConfigMap for non-sensitive configuration
* Secret for sensitive data
* Liveness Probe
* Readiness Probe
* Resource Requests and Limits
* Horizontal Pod Autoscaler (HPA)
* Ingress using NGINX
* Persistent Volume (PV)
* Persistent Volume Claim (PVC)
* Monitoring stack with Prometheus and Grafana
* Helm-based deployment and release management
* Rolling update and rollback experience
* Git feature branch workflow

---

## 🏗 Project Architecture

```text
Developer
   │
   ▼
Git Push
   │
   ▼
GitHub Repository
   │
   ▼
GitHub Actions
   │
   ▼
Docker Build & Validation
   │
   ▼
Docker Image
   │
   ▼
Helm Chart
   │
   ▼
Minikube Kubernetes Cluster
   │
   ▼
Deployment
   │
   ├──────────────► ConfigMap
   ├──────────────► Secret
   ├──────────────► Persistent Volume
   ├──────────────► Persistent Volume Claim
   ├──────────────► HPA
   └──────────────► Ingress
   │
   ▼
Pods
   │
   ▼
Service
   │
   ▼
Browser
```

---

## 📂 Project Structure

```text
devops-project/
│
├── .github/
│   └── workflows/
│       └── main.yml
│
├── flask-chart/
│   ├── Chart.yaml
│   ├── values.yaml
│   └── templates/
│       ├── deployment.yaml
│       ├── service.yaml
│       ├── configmap.yaml
│       ├── secret.yaml
│       ├── hpa.yaml
│       ├── ingress.yaml
│       ├── pv.yaml
│       ├── pvc.yaml
│       └── _helpers.tpl
│
├── images/
├── Dockerfile
├── app.py
├── requirements.txt
└── README.md
```

---

## 🐳 Docker Workflow

1. Create the Flask application.
2. Build a Docker image.
3. Run the application inside a container.
4. Verify the application locally.

Example:

```bash
docker build -t flask-app:v10 .
docker run -p 5000:5000 flask-app:v10
```

---

## ☸ Kubernetes Workflow

1. Start Minikube.
2. Build or load the Docker image.
3. Deploy the application using Helm.
4. Create the Service, ConfigMap, Secret, PV, PVC, HPA, and Ingress.
5. Verify Pods and Services.
6. Access the application through NodePort and Ingress.
7. Demonstrate self-healing using probes.
8. Demonstrate scaling using HPA.
9. Demonstrate persistence using PV/PVC.
10. Observe metrics and dashboards using Prometheus and Grafana.

Useful commands:

```bash
helm install flask-release .
helm upgrade flask-release .
helm history flask-release
kubectl get pods
kubectl get svc
kubectl get ingress
kubectl get pvc
kubectl get hpa
```

---

## 🔄 CI Pipeline

Every push to GitHub triggers GitHub Actions to:

* Install project dependencies
* Validate the Flask application
* Verify the project builds successfully

---

## 📊 Monitoring

This project includes a monitoring stack with:

* Prometheus for metrics collection and querying
* Grafana for dashboards and visualization

You can use them to observe:

* Pod CPU usage
* Pod memory usage
* Node resource usage
* Cluster health
* Application and workload behavior

---

## 📸 Screenshots

This repository includes screenshots demonstrating:

* GitHub Actions workflow success
* Docker image build
* Kubernetes Deployment
* Running Pods
* NodePort Service
* Ingress access
* Scaling with HPA
* Self-healing with probes
* Persistent storage working
* Grafana dashboards
* Prometheus queries
* Helm install / upgrade / rollback

---

## 🎯 Key Learning Outcomes

Through this project I learned:

* Docker containerization
* Git branching workflow
* GitHub Actions CI
* Kubernetes Deployments
* Kubernetes Services
* ConfigMaps and Secrets
* Liveness and Readiness probes
* Resource Requests and Limits
* Horizontal Pod Autoscaler
* Ingress networking
* Persistent storage with PV/PVC
* Helm chart creation and release management
* Monitoring with Prometheus and Grafana
* Troubleshooting Kubernetes issues

---

## 🚀 What This Project Demonstrates

This project shows practical experience with:

* Application containerization
* Kubernetes deployment and management
* Environment-based configuration
* Secure secret handling
* Resiliency and self-healing
* Autoscaling
* Traffic routing
* Persistent storage
* Observability
* Helm-based deployment workflows

---

## 📝 Notes

* `flask-chart/` is the main deployment path.
* The Helm release name used in this project is `flask-release`.
* Minikube was used as the local Kubernetes environment for learning and testing.

---

## 👤 Author

Built as part of a DevOps learning and job-preparation journey
