# Instructions

Importer le fichier db/interface.sql dans phpmyadmin  

Se placer dans le dossier de l'appli avec la commande cd

Ecrire composer update dans la console  
Remplir les champs demandés dans la console :  
* database_host : appuyer sur entrée
* database_port : appuyer sur entrée
* database_user : entrer votre nom d'utilisateur phpmyadmin (root ou autre)
* database_password : le mdp de cet utilisateur
* mailer_transport : appuyer sur entrée
* mailer_host : pareil
* mailer_user : pareil
* mailer_password : pareil
* secret : pareil

##Demandeurs d'emploi
###Vues
Elles sont dans app/config/Resources/views/demandeuremploi.  
Vous y trouverez les vues par défaut générées avec le CRUD par Symfony.

###Controleurs
Dans src/AppBundle/Controller/DemandeurEmploiController.php.  
On y trouve les fonctions CRUD des demandeurs d'emploi.

###Routes
On peut les voir dans le controleur.  
Après avoir fait le php bin/console server:start :  
* localhost:8000/demandeurs => liste des demandeurs d'emploi (ajoutez en qq uns dans votre bdd via phpmyadmin ou la fonction créer pour les voir s'afficher). 
* localhost:8000/demandeurs/new => créer un nouveau demandeur
* localhost:8000/demandeurs/{id} => afficher une fiche détaillée. id est un entier correspondant à l'id d'un demandeur d'emploi dans la bdd. De là, on peut delete.
* localhost:8000/demandeurs/{id}/edit => editer une fiche






