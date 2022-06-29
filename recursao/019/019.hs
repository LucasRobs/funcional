isUnic index array = filter (\x -> x == index) array

isUnicReq  index [] = 0;
isUnicReq  index (cabeça : array) 
  | cabeça == index = isUnicReq index array + 1
  | otherwise = isUnicReq index array + 0

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ (length $ isUnic a b) == 1
    print $ isUnicReq a b == 1
