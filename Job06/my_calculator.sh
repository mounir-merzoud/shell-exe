#!/bin/bash

# Vérifier si le nombre d'arguments est correct
if [ $# -ne 3 ]; then
    echo "Utilisation : $0 <nombre1> <opérateur> <nombre2>"
    exit 1
fi

# Récupérer les nombres et l'opérateur à partir des arguments
nombre1="$1"
operateur="$2"
nombre2="$3"

# Vérifier si les opérateurs sont valides
if [[ "$operateur" != "+" && "$operateur" != "-" && "$operateur" != "/" ]]; then
    echo "Opérateur non valide. Utilisez l'un des opérateurs suivants : +, -, /"
    exit 1
fi

# Effectuer les opérations en fonction de l'opérateur
if [ "$operateur" = "+" ]; then
    resultat=$(expr "$nombre1" + "$nombre2")
elif [ "$operateur" = "-" ]; then
    resultat=$(expr "$nombre1" - "$nombre2")
elif [ "$operateur" = "/" ]; then
    resultat=$(echo "scale=2; $nombre1 / $nombre2" | bc)
fi

# Afficher le résultat
echo "Résultat de l'opération : $nombre1 $operateur $nombre2 = $resultat"


