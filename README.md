# Projet Vagrant – Déploiement d’un cluster K3s et applications

Ce projet a pour objectif de déployer automatiquement un cluster Kubernetes léger (K3s) via Vagrant et VirtualBox, puis d’y déployer plusieurs applications avec configuration d’un ingress.

## Contenu du projet

- **Partie 1 :** Mise en place d’un cluster K3s composé d’un nœud maître et d’un nœud agent, entièrement automatisé avec des scripts Bash.
- **Partie 2 :** Déploiement d’applications sur le cluster K3s à l’aide de fichiers YAML et d’un ingress géré par Traefik.

## Fonctionnalités principales
- Création et provisionnement des machines virtuelles via **Vagrant**
- Installation automatique de **K3s**
- Déploiement d’applications et de services Kubernetes
- Configuration de l’ingress pour l’accès aux applications
- Environnement reproductible et portable

## Structure du dépôt
