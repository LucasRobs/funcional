elemento index array = array !! absolutIndex
  where
    absolutIndex = if index < 0 then index - 1 else index

main = do
  index <- readLn :: IO Int
  array <- readLn :: IO [Int]
  print $ elemento index array