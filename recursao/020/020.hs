maioresQue index array = filter (\x -> x > index) array

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ show $ maioresQue a b

