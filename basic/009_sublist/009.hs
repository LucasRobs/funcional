sublist a b c = drop a $ take b c

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO [Int]
  print $ sublist a b c