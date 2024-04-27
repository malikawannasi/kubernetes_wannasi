
# Déploiement d'une application sur Kubernetes

Ce guide détaille les étapes pour déployer une application web sur Kubernetes, en assurant la haute disponibilité, la sécurité et l'utilisation efficace des ressources.

## Prérequis

Avant de commencer, assurez-vous d'avoir :

- Un cluster Kubernetes opérationnel
- Accès à un terminal pour exécuter les commandes kubectl
- Docker installé localement pour la construction d'images Docker
- Accès à un registre de conteneurs pour stocker votre image Docker (par exemple, Docker Hub)

## Étapes de déploiement

1. **Containeriser l'application** :
    - Clonez ce dépôt git contenant le code source de l'application.
    - Assurez-vous que Docker est installé localement.
    - Utilisez le Dockerfile fourni pour construire une image Docker de l'application.
    - Poussez l'image vers votre registre de conteneurs.

2. **Déploiement Kubernetes** :
    - Utilisez le fichier `deployment.yaml` fourni pour créer un déploiement Kubernetes.
    - Appliquez le déploiement en utilisant la commande `kubectl apply -f deployment.yaml`.

3. **Service et Ingress** :
    - Créez un service de type LoadBalancer pour exposer l'application en utilisant le fichier `service.yaml`.
    - Configurez un contrôleur Ingress et définissez une ressource Ingress pour gérer l'accès externe à l'application.

4. **Mise à l'échelle et auto-guérison** :
    - Configurez l'Auto-Scaler Horizontal Pod (HPA) pour ajuster automatiquement le nombre de pods.
    - Testez la fonction de redémarrage automatique en supprimant manuellement un pod.

5. **Sécurité** :
    - Implémentez une NetworkPolicy pour restreindre le trafic vers les pods de l'application.
