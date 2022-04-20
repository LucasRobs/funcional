import Control.Monad (when)

contar x xs = foldl equal 0 xs
  where
    equal acc index = if x == index then acc + 1 else acc

somarTodos xs = foldl somar 0 xs
  where
    somar acc index = acc + index

menor xs = foldl qualMenor (head xs) xs
  where
    qualMenor menor' index = if menor' < index then menor' else index

existe x xs = foldl tem False xs
  where
    tem a y = a || x == y

pegaImpares xs = foldl pega [] xs
  where
    pega a y = if odd y then a ++ [y] else a

contarRepetidos xs = fst $ foldl conta (0, -1) xs
  where
    conta (acc, lest) y = if lest == y then (acc + 1, y) else (acc, y)

ehPrimo x = foldl isPrimo True [2 .. x - 1]
  where
    isPrimo acc index = acc && x `mod` index /= 0