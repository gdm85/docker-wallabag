PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "config" ("id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE , "name" VARCHAR UNIQUE, "value" BLOB);
CREATE TABLE entries (id INTEGER PRIMARY KEY, title TEXT, url TEXT, is_read NUMERIC DEFAULT 0, is_fav NUMERIC DEFAULT 0, content BLOB, user_id NUMERIC);
INSERT INTO "entries" VALUES(1,'a self hostable application for saving web pages | wallabag','http://www.wallabag.org/',0,1,'
<div class="row">
<div class="col-lg-8 col-md-12 col-xs-12 col-sm-12">
<p>wallabag (formerly poche) is a <strong>self hostable application for saving web pages</strong>. Unlike other services, wallabag is free (as in freedom) and open source.</p>
</div>

</div>
<div class="row">
<div class="col-lg-8 col-md-12 col-xs-12 col-sm-12">
<p>With this application you will not miss content anymore. <strong>Click, save, read it when you want</strong>. It saves the content you select so that you can read it when you have time.</p>
</div>

</div>
<div class="row">
<div class="col-lg-6 col-md-12 col-xs-12 col-sm-12">
<h2>How it works</h2>
<p>Thanks to the bookmarklet or <a title="Downloads" href="http://www.wallabag.org/downloads/">third-party applications</a>, you save an article in your wallabag to read it later. Then, when you open your wallabag, you can comfortably read your articles.</p>
<h2>How to use wallabag</h2>
<p>There are two ways to use wallabag: you can <a href="http://doc.wallabag.org/doku.php?id=users:begin:install">install it</a> on your web server or you can <a href="http://app.inthepoche.com">create an account</a> at framabag (we install and upgrade wallabag for you).</p>
</div>

</div>
',1);
INSERT INTO "entries" VALUES(2,'wallabag/wallabag','https://github.com/wallabag/wallabag',0,0,'<span class="name">README.md</span>
<article class="markdown-body entry-content" itemprop="mainContentOfPage">
<p>wallabag is a self hostable application allowing you to not miss any content anymore. Click, save, read it when you can. It extracts content so that you can read it when you have time.</p>
<p>To test wallabag, a demo website is online : <a href="http://demo.wallabag.org">demo.wallabag.org</a> (login poche, password poche).</p>
<h2><a name="license" class="anchor" href="https://github.com/wallabag/wallabag#license"/>License</h2>
<p>Copyright © 2010-2013 Nicolas Lœuillet <a href="mailto:nicolas@loeuillet.org">nicolas@loeuillet.org</a> This work is free. You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License, Version 2, as published by Sam Hocevar. See the COPYING file for more details.</p>
</article>',1);
INSERT INTO "entries" VALUES(3,'Framabag, un nouveau service libre et gratuit','http://www.framablog.org/index.php/post/2014/02/05/Framabag-service-libre-gratuit-interview-developpeur',0,0,'
<h2>Une interview de Nicolas, son développeur.</h2>
<p><em>Il ne vous a sûrement pas échappé que notre consommation de contenus du Web est terriblement chronophage et particulièrement frustrante tout à la fois : non seulement nous passons beaucoup (trop ?) de temps en ligne à explorer les mines aurifères de la toile, y détectant pépites et filons, mais nous sommes surtout constamment en manque. Même si nous ne sommes pas dans le zapping frénétique si facilement dénoncé par les doctes psychologues qui pontifient sur les dangers du numérique pour les jeunes cervelles, il nous vient souvent le goût amer de l’inachevé : pas le temps de tout lire (<a href="http://fr.wiktionary.org/wiki/TLDR" hreflang="fr">TL;DR</a> est devenu le clin d’œil mi-figue mi-raisin d’une génération de lecteurs pressés), pas trop le temps de réfléchir non plus hélas, pas le temps de suivre la ribambelle de liens associés à un article…<br /></em></p>
<p><em>Pour nous donner bonne conscience, nous rangeons scrupuleusement un marque-page de plus dans un sous-dossier qui en comporte déjà 256, nous notons un élément de plus dans la toujours ridiculement longue toudouliste, bref nous remettons à plus tard, c’est-à-dire le plus souvent aux introuvables calendes grecques, le soin de lire vraiment un article jugé intéressant, de regarder une vidéo signalée par les rézossocios, de lire un chapitre entier d’un ouvrage disponible en ligne…<br /></em></p>
<p><em>Alors bien sûr, à défaut de nous donner tout le temps qui serait nécessaire, des solutions existent pour nous permettre de « lire plus tard » en sauvegardant le précieux pollen de nos butinages de site en site, et d’en faire ultérieurement votre miel ; c’est bel et bon mais les ruches sont un peu distantes, ça s’appelle le cloud (nos amis techies m’ont bien expliqué mais j’ai seulement compris que des trucs à moi sont sur des machines lointaines, ça ne me rassure pas trop) et elles sont souvent propriétaires, ne laissant entrer que les <span class="c1">utilisateurs</span> consommateurs payants et qui consentent à leurs conditions. Sans compter que de gros bourdons viennent profiter plus ou moins discrètement de toutes ces traces de nous-mêmes qui permettent de monétiser notre profil : si je collecte sur ces services (ne les nommons pas, justement) une série d’articles sur l’idée de Nature chez Diderot, je recevrai diverses sollicitations pour devenir client de la boutique Nature &amp; Découverte du boulevard Diderot. Et si d’aventure les programmes de la NSA moulinent sur le service, je serai peut-être un jour dans une liste des militants naturistes indésirables sur les vols de la PanAm (je ne sais plus trop si je plaisante là, finalement…)<br /></em></p>
<p><em>La bonne idée : « se constituer un réservoir de documents sélectionnés à parcourir plus tard » appelait donc une autre bonne idée, celle d’avoir le contrôle de ce réservoir, de notre collection personnelle. C’est Nicolas Lœuillet, ci-dessous interviewé, qui s’y est collé avec une belle application appelée euh… oui, appelée Wallabag.<br /></em></p>
<p><em>Framasoft soutient d’autant plus son initiative qu’<a href="http://www.framablog.org/index.php/post/2014/01/31/Geektionnerd-Wallabag" hreflang="fr">on lui a cherché des misères pour une histoire de nom</a> et qu’il est possible d’installer soi-même une copie de Wallabag sur son propre site.<br /></em></p>
<p><em>Le petit plus de Framasoft, réseau toujours désireux de vous proposer des alternatives libératrices, c’est de vous proposer (sur inscription préalable) un accès au Framabag, autrement dit votre Wallabag sur un serveur Frama* avec notre garantie de confidentialité. Comme pour le Framanews, nous vous accueillons volontiers dans la limite de nos capacités, en vous invitant à vous lancer dans votre auto-hébergement de Wallabag.<br />Cet article est trop long ? Mettez-le dans <a href="http://www.framabag.org/index.php" hreflang="fr">votre Framabag</a> et hop.<br /></em></p>
<p><em>Framablog : Salut Nicolas… Tu peux te présenter brièvement ?<br /></em></p>
<p>Salut ! Développeur PHP depuis quelques années maintenant (10 ans), j’ai voulu me remettre à niveau techniquement parlant (depuis 3 ans, j’ai pas mal lâché le clavier). Pour mes besoins persos, j’ai donc créé un petit projet pour remplacer une solution propriétaire existante. Sans aucune prétention, j’ai hébergé ce projet sur Github et comme c’est la seule solution <em>open source</em> de ce type, le nombre de personnes intéressées a augmenté …</p>
<p><em>Les utilisateurs de services Framasoft ne le savent pas forcément, mais tu as déjà pas mal participé à la FramaGalaxie, non ?<br /></em></p>
<p>En effet. J’ai commencé un plugin pour Framanews, <a href="https://github.com/nicosomb/ttrss-purge-accounts" hreflang="fr">ttrss-purge-accounts</a>, qui permet de nettoyer la base de données de comptes plus utilisés. Mais ce <em>plugin</em> a besoin d’être terminé à 100% pour être intégré au sein de Framanews (et donc de Tiny Tiny RSS), si quelqu’un souhaite m’aider, il n’y a aucun souci.<br />J’ai aussi fait 1 ou 2 apparitions dans des traductions pour Framablog. Rien d’extraordinaire, je ne suis pas bilingue, ça me permet de m’entraîner.</p>
<p><em>Parlons de suite de ce qui fâche : ton application Wallabag, elle s’appellait pas “Poche”, avant ? Tu nous racontes l’histoire ?<br /></em></p>
<p>Euh en effet … Déjà, pourquoi <em>poche</em> ? Parce que l’un des trois « ténors » sur le marché s’appelle <em>Pocket</em>. Comme mon appli n’était destinée qu’à mon usage personnel au départ, je ne me suis pas torturé bien longtemps.</p>
<p>Cet été, on a failli changer de nom, quand il y a eu de plus en plus d’utilisateurs. Et puis on s’est dit que poche, c’était pas mal, ça sonnait bien français et puis avec les quelques dizaines d’utilisateurs, on ne gênerait personne.</p>
<p>C’est sans compter avec les sociétés américaines et leur fâcheuse manie de vouloir envoyer leurs avocats à tout bout de champ. Le 23 janvier, j’ai reçu un email de la part du cabinet d’avocats de Pocket me demandant de changer le nom, le logo, de ne plus utiliser le terme “read-it-later” (« lisez le plus tard ») et de ne plus dire que Pocket n’est pas gratuit (tout est parti d’<a href="https://twitter.com/wallabagapp/status/423786365944225792" hreflang="fr">un tweet</a> où je qualifie Pocket de « non free » à savoir non libre). Bref, même si je semblais dans mon droit, j’ai quand même pris la décision de changer de nom et Wallabag est né, suite aux <a href="http://framadate.org/studs.php?sondage=llcp6ojpyc9pklha" hreflang="fr">dizaines de propositions de nom reçues</a>. C’est un mélange entre le wallaby (de la famille des kangourous, qui stockent dans leur poche ce qui leur est cher) et <em>bag</em> (les termes sac / sacoche / besace sont énormément revenus). Mais maintenant, on va de l’avant, plus de temps à perdre avec ça, on a du pain sur la planche.<br /><img src="http://www.framablog.org/public/_img/framablog/wallaby_baby.jpg" alt="wallaby avec bébé dans sa poche" class="c2" title="wallaby avec bébé dans sa poche" /> crédit photo <a href="http://www.flickr.com/photos/26782864@N00/5027202234/in/photolist-8EeJ5A-h1TL6v-NEL81-cnNkSo-9YM1tv-7Kcg6b-8zpAoa-a1ZLMN-9YM39r-7h5SAD-8EeHfL-8EeFwu-dtVwnM-8uoME1-JEzXe-Gq4qy-92VJPR-Cxe1v-8H3D2J-a1ZFNs-9Y72K6-8EeGxL-5L53Fx-5NkENs-5U8CTY-5Nkssh-nkavF-9CrgwP-7sdCAa-duf2Kh-hZepzy-hZdU1e-hZeofF-hZekDg-hZegAY-hZeMZn-jaHgAf-8P87D2-5NgqRv-aT48QB-hZdV4Y-hZeC64-ERgps-5VYGGd-5VYJB1-5NkrFk-6Jxh7h-7h9PuQ-ERfMx-h1U1ih-h1USBx" hreflang="en">William Warby</a> qui autorise explicitement toute réutilisation.</p>
<p><em>Bon, alors explique-moi ce que je vais pouvoir faire avec Framabag…<br /></em></p>
<p>Alors Framabag, ça te permet de te créer un compte gratuitement et librement pour pouvoir utiliser Wallabag. Seule ton adresse email est nécessaire, on se charge d’installer et de mettre à jour Wallabag pour toi. Tu peux d’ailleurs profiter <a href="http://www.framasoft.net/#topPgCloud" hreflang="fr">d’autres services proposés par Framasoft ici</a>.</p>
<p>À ce jour, il y a 834 comptes créés sur Framabag.</p>
<p><em>Vous avez vraiment conçu ce service afin qu’on puisse l’utiliser avec un maximum d’outils, non ?<br /></em></p>
<p>Autour de l’application web, il existe déjà des applications pour smartphones (Android et Windows Phone), des extensions Firefox et Google Chrome.</p>
<p>Comme Wallabag possède des flux RSS, c’est facile de lire les articles sauvegardés sur sa liseuse (si celle-ci permet de lire des flux RSS). Calibre (« logiciel de lecture, de gestion de bibliothèques et de conversion de fichiers numériques de type ebook ou livre électronique »,nous dit ubuntu-fr.org) intègre depuis quelques semaines maintenant la possibilité de récupérer les articles non lus, pratique pour faire un fichier ePub !</p>
<p>D’autres applications web permettent l’intégration avec Wallabag (FreshRSS, Leed et Tiny Tiny RSS pour les agrégateurs de flux). L’API qui sera disponible dans la prochaine version de Wallabag permettra encore plus d’interactivité.</p>
<p><em>Y a-t-il un mode de lecture hors ligne ou est-ce que c’est prévu pour les prochaines versions ?<br /></em></p>
<p>Il y a un pseudo mode hors ligne, disponible avec l’application Android. On peut récupérer (via un flux RSS) les articles non lus que l’on a sauvegardés. Une fois déconnecté, on peut continuer à lire sur son smartphone ou sa tablette les articles. Par contre, il manque des fonctionnalités : quand tu marques un article comme lu, ce n’est pas synchronisé avec la version web de Wallabag. J’espère que je suis presque clair dans mes explications.</p>
<p>Pour la v2, qui est déjà en cours de développement, où je suis bien aidé par Vincent Jousse, on aura la possibilité d’avoir un vrai mode hors ligne.</p>
<p><em>Alors si on veut aider / participer / trifouiller le code / vous envoyer des retours, on fait comment ?<br /></em></p>
<p>On peut aider de plusieurs façons :</p>
<ul><li>utiliser wallabag et nous remonter les problèmes rencontrés ;</li>
<li>participer au développement de l’application https://github.com/wallabag/wallabag Si Silex / Symfony2 / HTML5 / etc. te parlent, n’hésite pas !</li>
<li>comme tout projet, le gros point noir est le manque de documentation. <a href="http://doc.wallabag.org" hreflang="fr">Elle est dispo ici</a> mais il manque plein de choses et tout n’est pas à jour ;</li>
<li>parler de Wallabag autour de vous ;</li>
<li>il existe <a href="https://flattr.com/thing/1265480/poche-a-read-it-later-open-source-system" hreflang="en">un compte Flattr</a>.</li>
</ul><p><em>Le mot de la fin…?<br /></em></p>
<p>Merci à Framasoft d’accueillir et de soutenir Wallabag !</p>
<p>La route est encore bien longue pour ne plus utiliser de solutions propriétaires, mais on devrait y arriver, non ?</p>
<p><img src="http://www.framablog.org/public/_img/framablog/pleinLesPoches.png" alt="framasoft plein les poches" class="c2" title="framasoft plein les poches" /><br /><a href="http://framalab.org/gknd-creator/" hreflang="fr">hackez Gégé !</a></p>
',1);
CREATE TABLE users (id INTEGER PRIMARY KEY, username TEXT, password TEXT, name TEXT, email TEXT);
INSERT INTO "users" VALUES(1,'wallabag','75e05e081ac484787b9174c62159978e4458257d','wallabag',' ');
CREATE TABLE users_config (id INTEGER PRIMARY KEY, user_id NUMERIC, name TEXT, value TEXT);
INSERT INTO "users_config" VALUES(1,1,'pager','10');
INSERT INTO "users_config" VALUES(2,1,'language','en_EN.utf8');
INSERT INTO "users_config" VALUES(3,1,'theme','baggy');
CREATE TABLE tags (
            id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
            value TEXT
        );
INSERT INTO "tags" VALUES(1,'opensource');
CREATE TABLE tags_entries (
            id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
            entry_id INTEGER,
            tag_id INTEGER,
            FOREIGN KEY(entry_id) REFERENCES entries(id) ON DELETE CASCADE,
            FOREIGN KEY(tag_id) REFERENCES tags(id) ON DELETE CASCADE
        );
INSERT INTO "tags_entries" VALUES(1,1,1);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('config','0');
INSERT INTO "sqlite_sequence" VALUES('tags',1);
INSERT INTO "sqlite_sequence" VALUES('tags_entries',1);
COMMIT;