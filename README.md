
<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/alec42/actulab-2019">
    <img src="01_DocumentPrincipal/src/GuideEnActuariat/couverture.jpg" alt="Logo" height="280">
  </a>

  <h3 align="center">Guide de survie en actuariat</h3>

  <p align="center">
    Ressources d’études pour les étudiants du baccalauréat en actuariat à l’université Laval.
    <br />
    <a href="https://github.com/ressources-act/Guide_de_survie_en_actuariat/tree/master/02_Cheatsheets"><strong>Explorer les feuilles »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ressources-act/Guide_de_survie_en_actuariat/blob/master/02_Cheatsheets/contributeurs/contributeurs-cheatshts.pdf/">Voir les contributeurs</a>
  </p>
</p>

# Guide de survie en actuariat

## Table des matières

- [Sigles et noms de cours](#siglenomind)
- [Structure du répertoire](#structure)
- [Contribuer](#contrib)
- [Contenu du répertoire](#contents)
- [Contributeurs](#contributors)

<a name="siglenomind"/>

## Index des noms de cours par sigle :

Sigle | Nom du cours
--- | --------
ACT-1000  | Introduction à l'actuariat I
ACT-1001  | Mathématiques financières
ACT-1002  | Analye probabiliste des risques actuariels
ACT-1003  | Compléments de mathématiques
ACT-2001  | Introduction à l'actuariat II
ACT-2000  | Analyse statistique des risques actuariels
ACT-1006  | Gestion des risques financiers I
ACT-2003  | Modèles linéaires
ACT-2004  | Mathématique actuarielles vie I
ACT-2005  | Mathématique actuarielles IARD I
ACT-2009  | Processus stochastiques
ACT-1005  | Analyse et traitement collectif du risque
ACT-2011  | Gestion des risques financiers II
ACT-2007  | Mathématique actuarielles vie II
ACT-2008  | Mathématique actuarielles IARD II
ACT-3000  | Théorie du risque
ACT-3114  | Apprentissage statistique en actuariat
ACT-4105  | Tarification en assurance IARD
FRN-3003  | Français avancé: grammaire et rédaction II

<a name="structure"/>

## Structure

### 00_Archive

Contenu non adapté à la structure du document principal.

> **Aucun pull request ne devrait ajouter du contenu à ce répertoire**

### 01_DocumentPrincipal

Environnement de compilation du document principal. Pour créer un nouvelle section, suivre les règles suivantes:

- **Chapter-\<nomDuChapitre\>.tex** : Chapitre portant sur une matière précise.
- **Appendix-\<nomDeAppendix\>.tex** : Ajout pouvant être utile dans plusieurs matières/chapitres.
- **Main-\<nomDuDocument\>.tex** : Fichier servant à la construction du document principal.
- **src/\<nomDuChapitre>** : Dossier contenant tous les img/.R/etc utilisé dans la section en question.
  
  ### 02_Cheatsheets
  
  Environnement de compilation des feuilles de formules. **Important**, elles doivent tous utiliser le même préambule (**cheatsht-preamble-general.tex**).
- **cheatsht-ACT\<XXXX\>.tex** : Code source de la feuille de formule concernant le cours ACT-\<XXXX\>.

### 03_Docs

Autres documents d'aide.

<a name="contrib"/>

##  Contribuer

Voir le fichier CONTRIBUTING.md pour les étapes détaillées avec des images.

## Contents

> TODO

<a name="contributors"/>
# Contributeurs

- [aut.] Nicholas Langevin [:octocat:](https://github.com/NicholasLangevin)
- [aut., diplômé] Gabriel Crépeault-Cauchon [:octocat:](https://github.com/gabrielcrepeault)
- [aut., cre.] Alec James van Rassel [:octocat:](https://github.com/alec42)
- [aut., cre.] Olivier Côté [:octocat:](https://github.com/OliCoSide)
- [ctb., cre.] Félix Cournoyer [:octocat:](https://github.com/felix5960)

Pour les contributeurs aux feuilles de formules ainsi qu'une description des différents rôles, voir [ce fichier](https://github.com/NicholasLangevin/Guide_de_survie_en_actuariat/blob/master/02_Cheatsheets/contributeurs-cheatshts.pdf).

