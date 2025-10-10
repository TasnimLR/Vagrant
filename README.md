## Projet Vagrant – Déploiement automatisé avec Ansible et K3s

### Partie 1 : Déploiement de K3s avec Vagrant
- Mise en place d’une infrastructure basée sur Vagrant et VirtualBox.  
- Configuration d’une machine Ubuntu.  
- Installation et déploiement automatique de K3s via script shell.  
- Vérification du bon fonctionnement du cluster :  
  - Le nœud maître est en état *Ready*.  
  - Les services et le serveur K3s fonctionnent correctement.

### Partie 2 : Automatisation avec Ansible
- Utilisation d’Ansible pour automatiser le déploiement complet du cluster K3s.  
- Installation automatique de K3s et configuration du cluster.  
- Déploiement de trois applications web (*app1*, *app2*, *app3*).  
- Mise en place des services associés (exposition sur le port 80).  
- Configuration d’un Ingress via Traefik pour le routage HTTP entre les applications.  
- Validation du bon fonctionnement via `curl` sur `app1.com`, `app2.com` et `app3.com`.

### Résultats observés
- Le cluster K3s est fonctionnel et stable.  
- Tous les pods et services sont en état *Running*.  
- L’Ingress redirige correctement vers les différentes applications.  
- Le déploiement complet est automatisé de bout en bout via Ansible.
