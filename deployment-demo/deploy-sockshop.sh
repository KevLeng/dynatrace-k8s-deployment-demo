#!/bin/bash

touch /tmp/finished2

git clone https://github.com/KevLeng/sockshop

git clone https://github.com/kubernetes-sigs/sig-storage-local-static-provisioner

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/v0.0.22/deploy/local-path-storage.yaml

#cd sockshop
