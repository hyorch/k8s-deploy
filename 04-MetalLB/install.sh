helm repo add metallb https://metallb.github.io/metallb
helm repo update
kubectl create namespace metallb
helm install -n metallb metallb metallb/metallb -f ./values.yaml
