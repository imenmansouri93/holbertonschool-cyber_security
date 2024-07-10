#!/bin/bash
# Utilise le serveur DNS de Google (8.8.8.8) pour récupérer tous les enregistrements pour le domaine spécifié
dig +noall +answer  $1 ANY
