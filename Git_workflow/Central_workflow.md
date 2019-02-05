# Central workflow with Git

Publier les nouvelles modifications:
```
git push origin master
```

## Gérer les conflits
Cette section est utile si ```git push``` vous à donner une erreur. Celle-ci est due au fait que quelqu'un à push modifier le dépôt avant vous. Vous n'avez donc plus la dernière version.

### Mettre à jour votre dépot 
Git pull les nouvelles modifications avec l'option ```--rebase``` qui permet d'ajouter les nouvelles informations avant les votre.
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
Si vous voulez tous annuler le processus et commencer depuis le début

> git rebase --abort

