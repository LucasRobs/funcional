paridade xs = odd $ length $ filter isTrue xs
  where
    isTrue x = x

main = do
  a <- readLn :: IO [Bool]
  print $ paridade a
