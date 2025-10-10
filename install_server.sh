#!/bin/bash
echo "=== Installation de K3s sur tasnimS (Server) ==="

if ! command -v k3s &> /dev/null; then
  curl -sfL https://get.k3s.io | sh -
  echo "K3s installé avec succès sur tasnimS"
else
  echo "K3s déjà installé sur tasnimS"
fi

sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant/node-token.txt
