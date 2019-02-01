-- Zero or more free variables
type Predicate = Set -> Bool

-- Formulas are concrete. No more free vars
data Formula =
    In Set Set
  | Equal Set Set
  | Or Formula Formula
  | And Formula Formula
  | Not Formula
  | Implies Formula Formula
  | Bicond Formula Formula
  | Exists Set Formula
  | ForAll Set Formula
  deriving Show

data Set =
  | PredSet (Predicate)
  | PowerSet Set
  | Infinite
  deriving Show

-- Example predicate
isInfinite :: Predicate  -- isInfinite :: Set -> Bool
isInfinite Infinate = True
isInfinite _ = False

-- Do we need these
-- class Atomic where
-- class Connective where
-- class Quantifier where

eval :: Formula -> Bool
eval (In s Infinite) = True
eval (In s PredSet (pred)) = pred s
eval (In s1 (PowerSet s2)) =

main = putStrLn "hi"
