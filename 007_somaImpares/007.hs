somaImpares a = sum $ filter odd a

main = do
  a <- readLn :: IO [Int]
  print $ somaImpares a
