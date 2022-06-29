
index_of' ((value, indexAux), response) number
  | value == number && response < 0 = ((value, indexAux+1), indexAux)
  | otherwise = ((value, indexAux+1), response)

index_of array value = foldl index_of' ((value,0), -1) array


main = do
  array <- readLn :: IO [Int]
  value <- readLn :: IO Int
  print $ snd $ index_of array value