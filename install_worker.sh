#!/bin/bash
echo "=== Installation de K3s sur tasnimSW (Agent) ==="

while [ ! -f /vagrant/node-token.txt ]; do
  echo "En attente du token K3s du serveur..."
  sleep 5
done

TOKEN=$(cat /vagrant/node-token.txt)

if ! command -v k3s &> /dev/null; then
  curl -sfL https://get.k3s.io | K3S_URL=https://192.168.56.110:6443 K3S_TOKEN=$TOKEN sh -
  echo "K3s installé avec succès sur tasnimSW"
else
  echo "K3s déjà installé sur tasnimSW"
fi
