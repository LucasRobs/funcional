heTriangulo' ((antes,  depois), res) index 
  | (antes + depois) > index && res = ((index , antes), True)
  | otherwise = ((antes,  depois), False)

heTriangulo (a, b, c) = foldl heTriangulo' ((c, b), True) [a, b, c] 

testaSequenciaWhitC ((indexA, indexB),res) indexC 
 | snd $ heTriangulo sequencia = ((indexA, indexB), res ++ [sequencia])
  where sequencia = (indexA, indexB, indexC)

testaSequenciaWhitB (((cabeca: array), indexA),res) indexB = ((array, indexA),res ++  (snd $ foldl testaSequenciaWhitC ((indexA, indexB),res) array)

ehCombinacao' (((acabeca : array), index), res) indexA 
  |  index < (length array - 3) = (((array, index+1), res ++ (snd $ foldl testaSequenciaWhitB ((array, indexA), res) array)))
  | otherwise = ((array, (index + 1)), res)

ehCombinacao array = foldl ehCombinacao' ((array, 0), []) array

main = do
  array <- readLn :: IO [Int]
  print $ snd $ ehCombinacao array

