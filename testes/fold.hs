import Control.Monad (when)

menor xs = foldl qualMenor (head xs) xs
  where
    qualMenor x y = if x > y then y else x

taNaLista x xs = foldl tem False xs
  where
    tem a y = a || x == y

pegaImpares xs = foldl pega [] xs
  where
    pega a y = if odd y then a ++ [y] else a

contarRepetidos xs = foldl conta (acc, lest) xs
  where
    conta (acc, lest) y = if lest == y then (acc + 1, y) else (acc, y)