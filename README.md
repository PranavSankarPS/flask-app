# 🚀 Flask CI/CD & Kubernetes Deployment Project

A production-style DevOps project demonstrating the complete lifecycle of deploying a Python Flask application using **Docker**, **GitHub Actions**, and **Kubernetes (Minikube)**.

This project was built to gain hands-on experience with modern DevOps practices, including containerization, Continuous Integration (CI), Kubernetes deployments, scaling, self-healing, and rolling updates.

---

# 📖 Project Overview

This project begins with a simple Flask web application and gradually evolves into a Kubernetes-based deployment.

The application is:

* Containerized using Docker
* Automatically validated using GitHub Actions
* Deployed on a Kubernetes cluster (Minikube)
* Exposed using a Kubernetes NodePort Service
* Tested for high availability through scaling
* Tested for self-healing by deleting Pods
* Updated without downtime using Kubernetes Rolling Updates

---

# 🛠 Technologies Used

* Python
* Flask
* Docker
* Git
* GitHub
* GitHub Actions
* Kubernetes
* Minikube

---

# ✨ Features

* Dockerized Flask application
* GitHub Actions Continuous Integration (CI)
* Kubernetes Deployment
* Kubernetes NodePort Service
* Application Scaling
* Kubernetes Self-Healing Demonstration
* Rolling Updates with Zero Downtime
* Git Feature Branch Workflow

---

# 🏗 Project Architecture


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
Minikube Kubernetes Cluster
    │
    ▼
Deployment
    │
    ▼
ReplicaSet
    │
    ▼
Pods
    │
    ▼
NodePort Service
    │
    ▼
Browser
```

---

# 📂 Project Structure


flask-app/
│
├── .github/
│   └── workflows/
│       └── main.yml
│
├── images/
│
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
│
├── Dockerfile
├── app.py
├── requirements.txt
└── README.md
```

---

# 🐳 Docker Workflow

1. Create the Flask application.
2. Build a Docker image.
3. Run the application inside a container.
4. Verify the application locally.

Example:

```bash
docker build -t flask-app:v1 .
docker run -p 5000:5000 flask-app:v1
```

---

# ☸ Kubernetes Workflow

1. Start Minikube.
2. Build the Docker image inside Minikube.
3. Create the Deployment.
4. Create the NodePort Service.
5. Verify Pods and Services.
6. Access the application.
7. Demonstrate scaling.
8. Demonstrate self-healing.
9. Perform a rolling update.

Useful commands:

```bash
kubectl get deployments
kubectl get pods
kubectl get svc
```

---

# 🔄 CI Pipeline

Every push to GitHub automatically triggers GitHub Actions to:

* Install project dependencies
* Validate the Flask application
* Verify the project builds successfully

---

# 📸 Screenshots

This repository includes screenshots demonstrating:

* GitHub Actions workflow success
* Docker image build
* Kubernetes Deployment
* Running Pods
* NodePort Service
* Scaling
* Self-Healing
* Rolling Update
* Browser output

---

# 🎯 Key Learning Outcomes

Through this project I learned:

* Docker containerization
* Git branching workflow
* GitHub Actions CI
* Kubernetes Deployments
* Kubernetes Services
* ReplicaSets
* Scaling applications
* Self-healing concepts
* Rolling Updates
* Basic troubleshooting of Kubernetes deployments

---

# 🔮 Future Improvements

Planned enhancements include:

* ConfigMaps
* Kubernetes Secrets
* Liveness and Readiness Probes
* Ingress Controller
* Helm Charts
* Prometheus Monitoring
* Grafana Dashboards
* Deployment on AWS EKS

---

