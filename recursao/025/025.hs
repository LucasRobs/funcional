
menores 0 _ = [];
menores _ []= [];
menores a b 
  | a >= (length b) = b
  | otherwise = menores a (removeMax b)

removeMax xs
    | (last xs) == (maximum xs) = init xs
    | otherwise = (removeMax (init xs)) ++ [last xs]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ menores a b