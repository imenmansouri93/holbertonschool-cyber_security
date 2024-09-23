#!/bin/bash

distinct_attackers=$(grep -E 'Accepted password' $"auth.log" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | sort -u | wc -l)

# Afficher le nombre d'attaquants distincts
echo "Nombre d'attaquants distincts ayant accédé au système : $distinct_attackers"