frequencia index array = filter (\x -> x == index) array

frequenciaReq index [] = 0;
frequenciaReq index (cabeça : array) 
  | cabeça == index = (frequenciaReq index array) + 1 
  | otherwise = (frequenciaReq index array) + 0

frequenciaFod index array = foldl (\x y -> if y == index then x + 1 else x) 0 array

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ length $ frequencia a b
    print $ frequenciaReq a b
    print $ frequenciaFod a b

