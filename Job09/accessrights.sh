Shell_Userlist
# Vérifiez si l'utilisateur actuel est "merzoud3"
current_user=$("merzoud3")
if [ "$current_user" != "merzoud3" ]; then
  echo "Ce script doit être exécuté par l'utilisateur 'merzoud3'."
  exit 1
fi

# Vérifiez si le fichier CSV existe
#csv_file="Shell_Userlist.csv"

#if [ ! -f "$csv_file" ]; then
 # echo "Le fichier CSV "
  #exit 1
#fi

# Parcourir le fichier CSV ligne par ligne et créer les utilisateurs
#while IFS=',' read -r Id Prenom Nom Mdp Role; do
  # Vérifier si l'utilisateur existe déjà
 # if id "$identifiant" &>/dev/null; then
  #  echo "L'utilisateur $identifiant existe déjà."
  #else
    # Créer l'utilisateur avec le groupe spécifié
   # useradd -m -s /bin/bash -g "$groupe" -c "$prenom $nom" "$identifiant"
   # echo "L'utilisateur $identifiant a été créé avec succès."
 # fi
#done < "$csv_file"

#echo "Opération terminée."

