# Guide de survie en actuariat
Ce projet à pour but de créer un document contenant toutes les feuilles de formules utiles au bac en actuariat. Toutes les contributions sont les bienvenues.

## Contributeurs 
- [cre, aut] Nicholas Langevin [:octocat:](https://github.com/NicholasLangevin)
- [cre, aut] Gabriel Crépeault-Cauchon [:octocat:](https://github.com/gabrielcrepeault)
- [aut] Alec James van Rassel [:octocat:](https://github.com/alec42)

## Structure
### 00_Archive
Contenu non adapter à la structure du document principal.
> **Aucun pull request ne devrait ajouter du contenu à ce répertoire**

### 01_DocumentPrincipal
Environement de compilation du document principal. Pour créer un nouvelle section, suivre les règles suivantes:
- **Chapter-<nomDuChapitre>.tex** : Chapitre portant sur une matière précise.
- **Appendix-<nomDeAppendix>.tex** : Ajout pouvant être utile dans plusieurs matière/chapitre.
- **Main-<nomDuDocument>.tex** : Fichier servant à la construction du document principal.
- **src/\<nomDuChapitre>** : Dosier contenants touts les img/.R/etc utilisé dans la section en question.
### 02_Cheatsheets
Environement de compilation des cheatsheets. **Important**, toutes les cheatsheets doivent utiliser le même préambule (**cheatsht-preamble-general.tex**).
- **cheatsht-ACT\<XXXX\>.tex** : Code source de la cheatsheets concernant le cours ACT-\<XXXX\>.

### 03_Docs
Autres document d'aide ou reletif au répertoire git.

## Contribuer
1) Forker le repertoire sur votre compte github
2) Cloner le répertoire sur votre machine personnelle et créer une branche de travail.
```
git clone https://github.com/<YourUserName>/Guide_de_survie_en_actuariat.git
git checkout -b <NomDeLaBranche>
```
3) Effectuer vos modification, stage and commit.
```
git add -A
git commit -m "<DescriptionDuChangement>"
```
4) Publier vos changement.
```
git push origin <NomDeLaBranche>
```
5) Ouvrer un pull request sur la page officiel du répertoire


## Contents
> TODO
