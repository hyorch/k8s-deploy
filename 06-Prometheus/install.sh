#!/bin/bash
kubectl create namespace prometheus

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add kube-state-metrics https://kubernetes.github.io/kube-state-metrics
helm repo update

helm install -n prometheus prometheus prometheus-community/prometheus -f values.yaml