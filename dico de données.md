# Dictionnaire de données

- id
- firstname  
- lastname 
- email  
- password  
- title
- color
- description
- date_publication
- question
- anecdote
- answer



Champ  | Type  |  Spécificités  
 -- | -- | --
 id | INT | GENERATED ALWAYS AS IDENTITY
 firstname | TEXT | NOT NULL
 lastname | TEXT | NOT NULL
 email | TEXT | NOT NULL
 password | TEXT | NOT NULL
 title | TEXT | NOT NULL
 color | TEXT | 
 description | TEXT | NOT NULL
 date_publication | TIMESTAMPTZ | NOT NULL
 question | TEXT | NOT NULL
 anecdote | TEXT | NOT NULL
 answer | TEXT | NOT NULL


