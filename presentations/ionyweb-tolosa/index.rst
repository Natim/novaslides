Ionyweb - Djangocon Tolosa
==========================

----

.. image:: ionyse.png

.. class:: center

    **Ionyweb - Un CMS en Django**

    Rémy Hubscher - remy.hubscher@novapost.fr - @natim

----

Pourquoi un CMS en Django ?
---------------------------

- En 2009, début de l'aventure Ionyse sur des services web en Django.
- Avant toute chose, nos clients ont besoin d'un site internet.
- Nous voulons prendre plaisir à développer.
- Il faut donc que nos clients puissent modifier leur site sans passer par nous.
- Django CMS n'était pas encore à l'époque une alternative.

----

Quel est le résultat attendu
----------------------------

En tant qu'utilisateur
======================

- Que les choses soient simple et rapide.
- Pouvoir ajouter des photos, des vidéos, du texte et l'organiser sur une page.
- Ne pas avoir plus de pré-requis que savoir écrire un mail.

En tant que développeur
=======================

- Que les tâches soient agréables, simple, rapide et non répétitive.
- Que le code soit réutilisable.
- Que le produit soit facilement améliorable.
- Pouvoir ajouter des fonctionnalités propres à un client sans modifier le CMS.

----

Ionyweb pour le développeur
---------------------------

Deux commandes :

- ``ionyweb-quickstart mon_nouveau_site`` : Permet de lancer un nouveau projet.
- ``ionyweb-manage startapp|startplugin`` : Permet d'ajouter les fonctionnalités propres à chaque client.

----

Ionyweb pour l'utilisateur
--------------------------

- En ajoutant ``#admin`` à une URL, on charge le formulaire de connexion.
- Une fois connecté, une barre d'outil apparait.
- Il suffit de survoler une zone pour en modifier le contenu.
- L'utilisateur peut changer de thème, modifier ses infos Google
  Analytics, Référencement, les accès d'autres utilisateurs, les noms
  de domaines depuis l'interface.

----

Pourquoi nous aimons Ionyweb
----------------------------

- C'est du Django, c'est DRY.
- C'est réutilisable.
- C'est pluggable, on peut ajouter des plugins et des applications.
- On découpe un thème en html5/css3/javascript puis ça prends 10mn à devenir un Ionyweb.
- Pour les plugins, on utilise la commande qui génére un squelette
  fonctionnel puis ensuite c'est du Django normal.
- Ionyweb studio permet de faire du SAAS avec Ionyweb et d'exporter son site pour l'héberger ensuite soit même.

----

Nos projets Ionyweb
-------------------

- Flatissimmo : Un site en trois langues catalogue + paiement en ligne.
- Eurochêne : Un site en six langues.
- et bien d'autres encore site institutionnel, site de restaurants, ...

----

Ionyweb a besoin de vous
------------------------

- http://github.com/ionyse/ionyweb
- http://ionyweb.rtfd.org/
- Posez vos questions @Natim

- Il faut que vous le testiez : http://www.ionyweb-studio.com/
- Il y a un atelier demain.
- Il y a du potentiel, je compte sur vous pour m'aider à sortir la v1.
