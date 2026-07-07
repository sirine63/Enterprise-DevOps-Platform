# Enterprise Hybrid DevOps & GitOps Platform

An enterprise-grade, multi-tier microservices deployment platform inspired by production Azure Kubernetes Service (AKS) architectures, localized within a high-performance **Minikube** and **Docker** sandbox.

## 🏗️ Architecture Blueprint

This platform delivers a complete cloud-native lifecycle loop, separating concerns across infrastructure, continuous integration, declarative continuous delivery, and advanced runtime orchestrations.

* **Core Workloads:** Angular Frontend, Java Spring Boot API, and MySQL 8.0 Database.
* **Infrastructure as Code (IaC):** Automated cluster tracking using **Terraform**.
* **CI/CD & GitOps:** Automated pipelines managed via **Jenkins** and reconciled continuously through **ArgoCD**.
* **Zero-Trust Security:** Network isolation policies driven by **Calico**.
* **Intelligent Automation:** Request-rate scaling leveraging **KEDA** (Kubernetes Event-driven Autoscaling).

---

## 📂 Repository Structure

```text
├── terraform/
│   └── main.tf             # IaC script automating cluster & addon provisioning
├── k8s-manifests/
│   ├── app-tier/           # Declarative deployments for Frontend, Backend, & MySQL
│   ├── security/
│   │   └── network-policy.yaml  # Strict Calico zero-trust traffic rules
│   └── autoscaling/
│       └── keda-scaler.yaml     # Prometheus-driven predictive auto-scaling
└── README.md               # Architecture documentation
