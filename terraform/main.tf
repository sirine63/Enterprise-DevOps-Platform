terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.3.6"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.12.1"
    }
  }
}

provider "minikube" {}

# 1. Automate the Secure Minikube Cluster Provisioning
resource "minikube_cluster" "devops_platform" {
  driver            = "docker"
  cluster_name      = "enterprise-platform"
  cpus              = 3
  memory            = "3000mb"
  network_plugin    = "cni"
  cni               = "calico" # Enables Zero-Trust Networking
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

# 2. Automate the GitOps CD Engine Deployment (ArgoCD)
resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
}

# 3. Automate the Intelligent Scaling Engine Deployment (KEDA)
resource "helm_release" "keda" {
  name             = "keda"
  repository       = "https://kedacore.github.io/charts"
  chart            = "keda"
  namespace        = "keda"
  create_namespace = true
}