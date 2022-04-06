at' xs 0 = xs
at' (x : xs) ind = at' xs (ind - 1)

at xs ind
  | intMod >= 0 = at' xs intMod
  | otherwise = at' xs (length xs + intMod)
  where
    intMod = ind `mod` length xs

main :: IO ()
main = do
  print $ at [1 .. 10] 0
  print $ at [1 .. 10] 9
  print $ at [1 .. 10] (-1)
  print $ at [1 .. 10] 11
