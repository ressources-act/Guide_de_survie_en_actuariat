# Central workflow with Git

Publier les nouvelles modifications:

```
git push origin master
```

## Gérer les conflits

Cette section est utile si `git push` renvoie une erreur. Celle-ci est due au fait que quelqu'un a modifié le dépôt avant vous. Vous n'avez donc plus la dernière version.

### Mettre à jour votre dépot

Git pull les nouvelles modifications avec l'option `--rebase` qui permet d'ajouter les nouvelles informations avant les votre.

```
git pull --rebase origin master
```

### Résoudre un conflit de merge

Si vos modifications entre en conflit avec ce que vous venez de pull, vous devez résoudre manuellement les conflits.

```
CONFLICT (content): Merge conflict in <some-file>
git status
# Unmerged paths:
# (use "git reset HEAD <some-file>..." to unstage)
# (use "git add/rm <some-file>..." as appropriate to mark resolution)
#
# both modified: <some-file>
```

Vous devez modifier les fichiers concernés, puis

```
git add <some-file>
git rebase --continue
```

### Retourner en arrière

Si vous voulez annuler tout le processus et commencer depuis le début

> git rebase --abort

# Branch workflow

Ce mode de travail consiste à toujours publier (`push`) ses modifications sur une branche temporaire et de demander un `pull request` à ses collaborateurs pour intégrer les modifications sur la branche principale.

## Publier ses modifcations sur une nouvelle branche

Disons qu'on modifier la fonction `fun()`, alors on pourrait appeler la branche `fct_fun`. Avant de publier nos résultats, on va sur notre branche temporaire :

```
git checkout -b fct_fun
git add -A # ou des fichiers en particulier
git commit -m "Ma modification apportée"
git push origin fct_fun
```

## Rédiger un `pull request` sur Github

On rédige notre `pull request` directement sur le site du serveur du dépôt. L'interface web nous indique en temps réel si des merge conflicts on lieu.

Il reste simplement qu'à `assign` le collaborateur en charge du projet pour qu'il accepte la modification.
