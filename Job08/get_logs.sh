# Créer une variable pour le nom du fichier
date=$(date +"%y_%m_%d_%H_%M")
file_name="number_connection_${date}.txt"

# Compter le nombre de connexions pour l'utilisateur "merzoud3"
num_connections=$(last merzoud3 | wc -l)

# Enregistrer le nombre de connexions dans un fichier
echo "$num_connections" > "$file_name"

# Créer une archive tar du fichier
tar -cvf "number_connection_${date}.tar" "$file_name"

# Définir le chemin du répertoire de destination
cd="/home/merzoud3/Documents/job08/backup"

# Créer le répertoire s'il n'existe pas encore
mkdir -p "$cd"

# Déplacer l'archive vers le répertoire spécifié
mv "number_connection_${date}.tar" "$cd"
