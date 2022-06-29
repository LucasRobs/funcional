
somaTudo [] = 0
somaTudo (cabeça : array) = cabeça + somaTudo array

splitAt' xs pos = ( take pos xs, drop (pos +1) xs )

hePoligono' ((index, array), res) value 
  | (somaTotal - value) == somaDosOutros && value < somaDosOutros && res = ((index + 1, array), True)
  | otherwise = ((index, array), False)
  where 
    somaTotal = somaTudo array
    (inicio, fim) = splitAt' array index
    somaDosOutros = somaTudo (inicio ++ fim)

hePoligono array = foldl hePoligono' ((0, array), True) array

main = do
  array <- readLn :: IO [Int]
  print $ snd $ hePoligono array

