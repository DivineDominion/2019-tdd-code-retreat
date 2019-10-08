import Data.List

data State = Dead | Alive deriving (Show, Eq)

type Coord = (Int, Int)

type Cell = (State, Coord)

type World = [State]

len = 3

get :: World -> Coord -> State
get w (x, y) =
  let x' = (x + len) `mod` len
      y' = (y + len) `mod` len
  in w !! (x' * len + y')

nextState :: State -> Int -> State
nextState Dead 3  = Alive
nextState Alive 2 = Alive
nextState Alive 3 = Alive
nextState _ _ = Dead

count :: World -> Coord -> Int
count w (x0, y0) =
  let states = [ get w (x, y) | x <- [x0-1 .. x0+1], y <- [y0-1 .. y0+1], x /= x0 || y /= y0 ] in
  let alive = filter (/= Dead) states in
  length alive

tick :: World -> World
tick w =
  let coords = [ (x,y) | x <- [0..len-1], y <- [0..len-1]]
      cells  = zipWith (,) w coords
  in map (update w) cells


update :: World -> Cell -> State
update world (state, coord) =
  nextState state $ count world coord
