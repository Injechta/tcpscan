# Port Scanner Bash Script

Ce script Bash permet d'effectuer une analyse de ports TCP sur une adresse IP spécifiée.

## Utilisation

1. **Enregistrez le script :**
   - Enregistrez le script dans un fichier, par exemple, `scan.sh`.

2. **Rendez le script exécutable :**
   - Utilisez la commande suivante pour rendre le script exécutable :
     ```bash
     chmod +x scan.sh
     ```

3. **Exécutez le script :**
   - Exécutez le script en spécifiant l'adresse IP que vous souhaitez analyser en tant qu'argument. Par exemple :
     ```bash
     ./scan.sh 192.168.1.1
     ```

## Fonctionnement du script

Le script utilise une fonction `tcpscan` pour itérer sur les ports de 1 à 30 et tente de se connecter à chaque port TCP sur l'adresse IP spécifiée. Il affiche ensuite si le port est ouvert, fermé ou s'il y a eu un délai de connexion.

La commande utilise `timeout` pour limiter la durée d'attente d'une connexion à 1 seconde, et la sortie est dirigée vers `/dev/null` pour supprimer les messages indésirables.

## Exemple d'utilisation

Supposons que votre machine a l'adresse IP 192.168.1.1 que vous souhaitez analyser. Vous pouvez exécuter le script avec la commande suivante :
```bash
./scan.sh 192.168.1.1
```
Le script affichera le statut de chaque port analysé.

Remarque : Assurez-vous d'avoir les permissions nécessaires pour exécuter le script, et vérifiez que la commande timeout est disponible sur votre système.
