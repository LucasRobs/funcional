alter a =  foldl f [] [1.. a]
  where f x y = x ++ [y] ++ [y * (-1)]

main = do
    a <- readLn :: IO Int
    print $ alter a