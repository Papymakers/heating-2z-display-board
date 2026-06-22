#!/bin/bash
# Script d'initialisation du dépôt GitHub
# Org : Papymakers / Repo : heating-2z-display-board
# Exécuter depuis le dossier racine du projet

set -e

REPO_NAME="heating-2z-display-board"
ORG="Papymakers"

echo "=== Initialisation du dépôt $ORG/$REPO_NAME ==="

# Init git
git init
git add .
git commit -m "Initial commit — kit affichage TM1637 2 zones (3 PCB)"

# Créer le repo sur GitHub (nécessite gh CLI authentifié)
gh repo create "$ORG/$REPO_NAME" \
  --public \
  --description "Kit d'affichage TM1637 + bargraphe LEDs pour gestionnaire de chauffage 2 zones ESP32-C6 — 3 PCB" \
  --homepage "https://papymakers.com"

# Lier et pousser
git remote add origin "git@github.com:$ORG/$REPO_NAME.git"
git branch -M main
git push -u origin main

echo "=== Dépôt disponible : https://github.com/$ORG/$REPO_NAME ==="
