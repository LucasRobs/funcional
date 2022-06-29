reverso a = reverse a

main = do
    a <- readLn :: IO [Int]
    print $ reverso a