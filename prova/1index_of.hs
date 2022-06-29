
index_of' [] value indexAux = -1
index_of' (cabeça : array) value indexAux
  | cabeça == value = indexAux
  | otherwise = index_of' array (value)( indexAux +1)

index_of array value = index_of' array value 0

main = do
  array <- readLn :: IO [Int]
  value <- readLn :: IO Int
  print $ index_of array value