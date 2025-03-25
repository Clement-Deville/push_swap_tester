
# My push swap tester

Ceci est un testeur ecrit en shell et en python generant un nombre des listes de nombres aletatoires selon une plage donnee, les envoit au programme "push_swap" et verifie les solutions grace au "./checker_linux" donne dans le sujet. De plus, il verifie si la solution ne fait pas plus qu'un nombre de coup maximum donne.

En cas de succes, il retourne une moyenne du nombre de coup, le nombre de coup maximum et minimum.

En cas d'echec, il affiche la raison et enregistre dans "trace.txt" l'arguement pour lequel le test est rate; et dans "solution.txt" ce que le programme "push_swap" a retourne.



UTILISATION DU TESTER:

Doit etre pull dans le dossier ou se trouve ./push_swap.

./tester.sh [ITERATIONS] [SIZE_LIST] [MAX_MOVES]

-[ITERATIONS]: nombre d'iterations de test.

-[SIZE_LIST]: taille de la liste.

-[MAX_MOVES]: Nombre Maximum de coup a ne pas depasser.

Le programme peut ne pas prendre d'arguement et demandera a l'utilisateur de saisir les valeures citees au dessus.

