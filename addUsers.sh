if [ $# -eq 0 ]; then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
  exit 1
fi
for utilisateurs in $@; do
  if id "$utilisateurs" &>/dev/null; then
         echo "L'utilisateur $utilisateurs existe dejà"
  else  
  if id "$utilisateurs" &>/dev/null; then
  useradd "$utilisateurs"
        echo "L'utilisateur $utilisateurs a été crée"
  else
        echo "Erreur à la creation de l'utilisateur $utilisateurs"
fi 
 
fi
done
