# Haskell Lösung aus Session 2

Die Beschränkung war maximal 4 Zeilen pro Funktion.

- `session.hs` ist die Fassung aus der Session

- `session_extended.hs` ist minimal umformuliert und um ein paar Kommentare zur besseren Verständlichkeit erweitert

Wer Haskell lernen will, kann unter http://learnyouahaskell.com ein kostenloses Buch finden.


# Tests

Wir hatten in der Session etwas interaktiv getestet, z.B.:

- Nachfolgezustände einer toten Zelle mit 0..8 Nachbarn:

````
    > map (nextState Dead) [0..8]
    [Dead,Dead,Dead,Alive,Dead,Dead,Dead,Dead,Dead]
````

- Nachfolgezustände einer lebenden Zelle mit 0..8 Nachbarn:

````
    > map (nextState Alive) [0..8]
    [Dead,Dead,Alive,Alive,Dead,Dead,Dead,Dead,Dead]
````

- Update einer 3x3 Welt in der initial die mittlere Zelle sowie die untere Reihe leben:

````
    > update [ Dead,  Dead,  Dead,
               Dead,  Alive, Dead,
               Alive, Alive, Alive ]
    [Dead,Dead,Dead,Dead,Alive,Dead,Alive,Alive,Alive]
````

Das Ergebnis ist die Identität, weil wegen des Wrap-Arounds immer alle lebendigen Zellen genau 3, alle Toten immer genau 4 Nachbarn haben.
