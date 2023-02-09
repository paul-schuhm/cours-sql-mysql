#!/bin/bash

greet(){
    echo "Hi $1"
}

db_set(){
    #On enregistre la donnée dans le fichier database sous la forme clef, valeur (séparé par une virgule)
    echo "$1,$2" >> database
}
db_get(){
    #On récupere la ligne qui nous interesse dans le fichier (par clef)
    #On substitue et affiche sur la sortie standard la clef par une chaine vide => affiche la valeur
    #On n'affiche que la dernière ligne des résultats qui ont match la clef
    grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
}

echo "atelier 'plain text database' - script chargé, ok."