import Data.List

-- Eine Zelle ist entweder tot oder lebendig
data State = Dead | Alive deriving (Show, Eq)

-- X-Y-Koordinaten um Zellen in der Welt zu adressieren
type Coord = (Int, Int)

-- Die Welt ist eine Liste von Zellzuständen (flachgekloppft, statt eines 2D-Arrays)
type World = [State]

-- Größe der quadratischen Welt
len = 3

-- `get` nimmt eine Welt `w` und eine Koordinate `(x, y)`, berechnet den Index in die lineare Liste und ergibt den Zustand der dortigen Zelle
get :: World -> Coord -> State
get w (x, y) = w !! (x' * len + y')
    where
        -- Koordinaten-Behandlung für eine Welt mit wrap-around in alle Richtungen
        x' = (x + len) `mod` len
        y' = (y + len) `mod` len

-- `nextState` berechnet aus einem Ausgangszustand und der Anzahl lebendiger Nachbarn den neuen Zustand einer Zelle
nextState :: State -> Int -> State
nextState Dead  3 = Alive
nextState Alive 2 = Alive
nextState Alive 3 = Alive
nextState _     _ = Dead

-- `count` zählt in einer Welt `w` die lebendigen Nachbarzellen rund um `(x, y)`
count :: World -> Coord -> Int
count w (x, y) = length alive
    where
        -- Liste der Zustände der 8 Nachbarzellen
        states = [ get w (x', y') | x' <- [x-1..x+1],  y' <- [y-1..y+1],  x /= x' || y /= y' ]
        -- Filtere tote Nachbarzellen heraus
        alive  = filter (/= Dead) states

-- Ein Hilfstyp der temporär ein Zelle als Tupel aus Zustand und ihrer Adresse beschreibt
type Cell = (State, Coord)

-- Update-Funktion für die gesamte Welt
tick :: World -> World
tick w = map (update w) cells
    where
        -- Liste aller Koordinaten in der Spielwelt
        coords = [ (x,y) | x <- [0..len-1], y <- [0..len-1]]
        -- Paare Zellzustand jeweils mit ihrer Koordinate
        cells  = zipWith (,) w coords

-- Update-Funktion für eine einzelne Zelle:
update :: World -> Cell -> State
update world (state, coord) = nextState state (count world coord)
