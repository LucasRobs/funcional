primeiros = init

main = do
  a <- readLn :: IO [Int]
  print $ primeiros a
