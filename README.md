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
- **Chapter-\<nomDuChapitre\>.tex** : Chapitre portant sur une matière précise.
- **Appendix-\<nomDeAppendix\>.tex** : Ajout pouvant être utile dans plusieurs matière/chapitre.
- **Main-\<nomDuDocument\>.tex** : Fichier servant à la construction du document principal.
- **src/\<nomDuChapitre>** : Dosier contenants touts les img/.R/etc utilisé dans la section en question.
### 02_Cheatsheets
Environement de compilation des cheatsheets. **Important**, toutes les cheatsheets doivent utiliser le même préambule (**cheatsht-preamble-general.tex**).
- **cheatsht-ACT\<XXXX\>.tex** : Code source de la cheatsheets concernant le cours ACT-\<XXXX\>.

### 03_Docs
Autres document d'aide ou reletif au répertoire git.

## Contribuer avec la ligne de commande

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

## Contribuer avec GitHub Desktop 

Installer [GitHub Desktop]([https://desktop.github.com/](https://desktop.github.com/) pour la gestion de Git et [Visual Studio Code]([https://code.visualstudio.com/](https://code.visualstudio.com/) pour la gestion de conflits.

### Workflow

1. "*Open in Desktop*" pour cloner le projet à votre l'ordinateur

![Capture d’écran, le 2019-11-10 à 16.03.14.png](https://i.loli.net/2019/11/11/uijd5Og1JrZMXp6.png)

2. Une fois le projet cloné, créer une nouvelle branche.

<p align="center">
  <img src="https://i.loli.net/2019/11/11/ebfHPW5jnhClcmS.png" height="600">
</p>

3. Nommer la branche `<PRÉNOM>-MODIFS`
<p align="center">
  <img src="https://i.loli.net/2019/11/11/hioePf4s6maGWcp.png" height="350">
</p>

4. Publier votre branche!
   
   ![Capture d’écran, le 2019-11-10 à 16.17.40.png](https://i.loli.net/2019/11/11/cobXThj13pQyJFM.png)

Vous pouvez maintenant effectuer des modifications!

### Contribuer

***ASSUREZ-VOUS D'ÊTRE DANS VOTRE BRANCHE***

1. Garder vos `commit` simples pour qu'ils soient facilement acceptables. 
   
   Par exemple, lorsque vous effectuez des modifications faites un `commit` par cours modifié.
   
   ![Capture d’écran, le 2019-11-10 à 15.59.55.png](https://i.loli.net/2019/11/11/8Z7d4lDSIXkzibB.png)
   
   ![Capture d’écran, le 2019-11-10 à 16.00.16.png](https://i.loli.net/2019/11/11/9Bhj6flXxk42eJr.png)

2. `push`!![Capture d’écran, le 2019-11-10 à 16.00.56.png](https://i.loli.net/2019/11/11/YZzXkhtgvArMQSe.png)

### Gérer les conflits

Lorsque vous avez cette erreur, c'est qu'il y a un conflit; n'ayez pas peur, Visual Studio Code permet de la gérer visuellement.

1. Ouvrir avec Visual Studio Code 
<p align="center">
  <img src="https://i.loli.net/2019/11/11/oIdG9C76rLNkFOX.png" height="300">
</p>

2. Défiler jusqu'à ce que vous trouvez une partie du code ressemblant à ceci:
<p align="center">
  <img src="https://i.loli.net/2019/11/11/KLjIWykF71hT8RQ.png">
</p>
   
   Suffit de choisir quelle modification conserver!
   
   Suite au choix, sauvegarder et retourner dans GitHub Desktop.

3. Le message suivant va apparaître. 
   
   On peut donc faire le `commit` et faire un push de nos modifications.
   
<p align="center">
  <img src="https://i.loli.net/2019/11/11/KvAR23y7FmWDQq6.png" height="300">
</p>

4. Vous pouvez maintenant faire un `push` de vos modifications

### Rédiger un `Pull Request` sur Github

- On rédige notre `pull request` directement sur le site du serveur du dépôt. 
  
  - L'interface web nous indique en temps réel si des merge conflits on lieu.

- Attribuer (`assign`) la vérification de votre requête à un des collaborateurs en charge du projet pour qu'il accepte la modification. 
  
  - Il impératif d'assigner un contributeur étant présentement dans le cours ou l'ayant déjà complété.

- Assigner une libélée (`label`) pertinente à votre ajout.

### Exemples

![Capture d’écran, le 2019-11-10 à 16.14.06.png](https://i.loli.net/2019/11/11/VmtDfUHkaGx472j.png)

![Capture d’écran, le 2019-11-10 à 16.13.46.png](https://i.loli.net/2019/11/11/ckqhBKLXgfN5EJI.png)

## Contents
> TODO
