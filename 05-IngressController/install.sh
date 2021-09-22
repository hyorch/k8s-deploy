#!/bin/bash
kubectl create namespace ingress-nginx
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install -n ingress-nginx ingress-nginx ingress-nginx/ingress-nginx