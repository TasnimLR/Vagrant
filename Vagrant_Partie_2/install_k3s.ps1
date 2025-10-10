#!/bin/bash
set -e
echo "=== Installation du serveur K3s ==="
if ! command -v k3s >/dev/null 2>&1; then
  curl -sfL https://get.k3s.io | sh -
fi
echo "=== Attente du démarrage de l'API ==="
for i in {1..60}; do
  if sudo k3s kubectl get node >/dev/null 2>&1; then break; fi
  sleep 2
done
sudo k3s kubectl -n kube-system rollout status deploy/traefik --timeout=180s || true
