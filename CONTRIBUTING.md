## Table des matières

- [Contribuer via Github Desktop](#github-desktop-contrib)
- [Contribuer via la ligne de commande](#command-line-contrib)

<a name="github-desktop-contrib"/>

## Contribuer avec GitHub Desktop

Installer [GitHub Desktop](https://desktop.github.com/) pour la gestion de Git et [Visual Studio Code](https://code.visualstudio.com/) pour la gestion de conflits.

### Workflow avec une fourche du répertoire

1. Créer une **fourche** du répertoire:

<p align="center">
  <img src="https://i.imgur.com/UAz5wSs.png" height="600">
</p>

__Noter__ que le projet est maintenant un "fork" du projet original
<p align="center">
  <img src="https://i.imgur.com/epr5Age.png" width="900">
</p>

2. "*Open in Desktop*" pour cloner le projet à votre l'ordinateur

<p align="center">
  <img src="https://i.imgur.com/5vuhlQk.png" width="900">
</p>

<p align="center">
  <img src="https://i.imgur.com/D57iBL8.png" width="900">
</p>

3. Une fois le projet cloné, créer une **nouvelle branche**.

<p align="center">
  <img src="https://i.loli.net/2019/11/11/ebfHPW5jnhClcmS.png" height="600">
</p>

4. Nommer la branche `<PRÉNOM>-MODIFS`
   
   <p align="center">
   <img src="https://i.loli.net/2019/11/11/hioePf4s6maGWcp.png" height="350">
   </p>

5. Publier votre branche!
   
   ![Capture d’écran, le 2019-11-10 à 16.17.40.png](https://i.loli.net/2019/11/11/cobXThj13pQyJFM.png)

Vous pouvez maintenant effectuer des modifications!

### Contribution (commit, push puis pull request)

***ASSUREZ-VOUS D'ÊTRE DANS VOTRE BRANCHE***

1. Garder vos `commit` simples pour qu'ils soient facilement interprétables. 
   
   Par exemple, lorsque vous effectuez des modifications faites un `commit` par cours modifié.
   
   ![Capture d’écran, le 2019-11-10 à 15.59.55.png](https://i.loli.net/2019/11/11/8Z7d4lDSIXkzibB.png)
   
   ![Capture d’écran, le 2019-11-10 à 16.00.16.png](https://i.loli.net/2019/11/11/9Bhj6flXxk42eJr.png)

2. `push`!![Capture d’écran, le 2019-11-10 à 16.00.56.png](https://i.loli.net/2019/11/11/YZzXkhtgvArMQSe.png)

3. Pour fusionner au document principal, naviguer au dépôt original (donc pas votre fourche, mais le vrai dépôt) et naviguer à l'onglet **"Pull Requests"**

<p align="center">
  <img src="https://i.imgur.com/Qq9uetd.png" height="350">
</p>

4. Sélectionner "New Pull Request"

<p align="center">
  <img src="https://i.imgur.com/mXrYT6r.png" width="900">
</p>

5. Sélectionner l'option "comparer across forks"

<p align="center">
  <img src="https://i.imgur.com/hHUdNBH.png" width="900">
</p>

6. Sélectionner votre branche comme branche à fusionner au dépôt ("head repository")


<p align="center">
  <img src="https://i.imgur.com/PG4ruUy.png" width="900">
</p>

7. Sélectionner "Create Pull Request"

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
   

<a name="command-line-contrib"/>

## Contribuer avec la ligne de commande

###   Créer une fourche du répertoire (fork, commit)
1) Forker le repertoire sur votre compte github
2) Cloner le répertoire sur votre machine personnelle et créer une branche de travail.
   
   ```
   git clone https://github.com/<YourUserName>/Guide_de_survie_en_actuariat.git
   git checkout -b <NomDeLaBranche>
   ```

3) Effectuer les modification, stage and commit.
   
   ```
   git add -A
   git commit -m "<DescriptionDuChangement>"
   ```
4) Publier les changements.
   
   ```
   git push origin <NomDeLaBranche>
   ```

5) Ouvrir un pull request sur la page officiel du répertoire

### Contribution (push)
Publier les nouvelles modifications:

```
git push origin master
```

### Gestion de conflits

Cette section est utile si `git push` renvoie une erreur. Celle-ci est due au fait que quelqu'un a modifié le dépôt avant vous. Vous n'avez donc plus la dernière version.

1. Mettre à jour votre dépot
-  Git pull les nouvelles modifications avec l'option `--rebase` qui permet d'ajouter les nouvelles informations avant les votre.

   ```
   git pull --rebase origin master
   ```

2. Résoudre un conflit de merge
-  Si vos modifications entre en conflit avec ce que vous venez de pull, vous devez résoudre manuellement les conflits.

   ```
   CONFLICT (content): Merge conflict in <some-file>
   git status
   # Unmerged paths:
   # (use "git reset HEAD <some-file>..." to unstage)
   # (use "git add/rm <some-file>..." as appropriate to mark resolution)
   #
   # both modified: <some-file>
   ```

-  Vous devez modifier les fichiers concernés, puis

   ```
   git add <some-file>
   git rebase --continue
   ```

3. Retourner en arrière

Si vous voulez annuler tout le processus et commencer depuis le début

> git rebase --abort

### Publier ses modifcations sur une nouvelle branche

Disons qu'on modifier la fonction `fun()`, alors on pourrait appeler la branche `fct_fun`. Avant de publier nos résultats, on va sur notre branche temporaire :

   ```
   git checkout -b fct_fun
   git add -A # ou des fichiers en particulier
   git commit -m "Ma modification apportée"
   git push origin fct_fun
   ```
