# O-quiz-pro

## Analyse préliminaire

- une application avec des quiz
- utilisateurs qui peuvent se connecter
- un utilisateur peut jouer au quiz, puis voir son score+récap
- les scores ne sont pas stockés, ni aucune autre statistiques sur les quizz ou les joueurs.
- chq quiz possède un titre, une petite description, un auteur, et un ou plusieurs thèmes
- un auteur peut écrire plusieurs quiz
- un quiz possède des questions
- chq question possède un titre
- chq question possède un contexte et une difficulté
- les questions sont à choix multiples, mais une seule bonne réponse ! (donc pas de questions ouvertes, et pas de questions avec plusieurs bonnes réponses)
- un quiz peut posséder autant de questions que nécessaire (from zero to infinite !)
- les quiz sont toujours conservés
- toute l'administration se fait par le client, aucun formulaire d'inscription, ni de création de quizz, ou quoi que ce soit !
- la possibilité de filtrer les quesions par difficulté n'est pas nécessaire.
- TOUS les utilisateurs ont accès à tous les quiz !
  - un utilisateur qui n'est pas connecté peut accéder à tous les quizzes MAIS NE PEUX PAS JOUER
  - un utilisateur connecté peut accéder aux quiz ET jouer !
- pas de note maximale par quiz, ça dépendra du nombre de questions et de leur difficulté
- on répond à toutes les questions d'un même quiz en une fois (sur la même page).
- on ne peux pas revenir en arrière pour modifier ses réponses
- on peux refaire les quiz autant de fois qu'on veut
- une page pour afficher les quiz liés à un thème : oui !
- la possibilité d'implémenter un "temps limite par quiz" est interessante mais pas prioritaire (=> met ça dans les bonus !)
- aucun limite de nombre (nb de quiz, nb de questions par quiz, nb de réponses par question)
- un nom? oui ! O'Quiz