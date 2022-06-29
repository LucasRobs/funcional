
toInt :: String -> Int
toInt x = read x :: Int

desenpacota :: String -> (Int, Int)
desenpacota line = (a,b)
  where [a, b] = map toInt . words $ line

processa :: [String] -> String
processa vet = show $ classificados $ zip (map desenpacota vet) [0 .. length vet - 1]

classificados (ind, (a,b)) = a >= 10 && b >= 10

getGanhador xs = fst $ foldl conta ("sem ganhador", -1) xs
  where
    conta (acc, melhor) y = if fst fst y == fst snd y then (acc + 1, y) else (acc, y)

main :: IO ()
main = do
    print $ processa ["5 8","2 7","8 1","9 4"]
    