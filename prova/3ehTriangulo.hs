heTriangulo' ((antes,  depois), res) index 
  | (antes + depois) > index && res = ((index , antes), True)
  | otherwise = ((antes,  depois), False)

heTriangulo a b c = foldl heTriangulo' ((c, b), True) [a, b, c] 

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  print $ snd $ heTriangulo a b c

