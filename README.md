# Script de Post-Installation Windows

Ce script PowerShell automatise la configuration post-installation d'un système Windows en effectuant plusieurs tâches essentielles.

## Fonctionnalités

### Personnalisation du Bureau
- Suppression du raccourci Microsoft Edge
- Ajout de raccourcis pratiques :
  - Dossier Utilisateur
  - Ce PC
  - Panneau de configuration

### Installation de Logiciels
Installation automatique via Chocolatey des applications suivantes :
- Google Chrome
- Mozilla Firefox
- VLC Media Player
- 7-Zip
- LibreOffice
- Adobe Reader
- TeamViewer

### Mises à jour Windows
- Installation du module PSWindowsUpdate
- Configuration des paramètres de sécurité
- Installation automatique de toutes les mises à jour Windows disponibles

## Utilisation
1. Exécuter le script PowerShell avec des privilèges administrateur
2. Le système redémarrera automatiquement une fois l'installation terminée

## Remarques
- Nécessite une connexion Internet stable
- L'exécution complète peut prendre un certain temps selon les mises à jour disponibles
- Le redémarrage final est obligatoire pour appliquer toutes les modifications

N'hésitez pas à contribuer ou à suggérer des améliorations à ce script.
