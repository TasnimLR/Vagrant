#!/bin/bash
set -e
echo "=== Déploiement des applications et ingress ==="
sudo k3s kubectl apply -f /vagrant/apps.yaml
sudo k3s kubectl apply -f /vagrant/ingress.yaml
