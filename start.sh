#!/bin/bash
minikube start --nodes 3 -p minikube-cluster
minikube addons enable metrics-server --profile minikube-cluster
kubectl apply -f argocd/namespace.yaml
kubectl apply -f argocd/install.yaml -n argocd