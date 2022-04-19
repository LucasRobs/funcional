pertence :: Eq t => t -> [t] -> Bool
pertence a [] = False
pertence a (x : z) =
  if (a == x)
    then True
    else pertence a z

uniaoR :: Eq t => [t] -> [t] -> [t]
uniaoR [] l = l
uniaoR (x : xz) l =
  if pertence x l
    then uniaoR xz l
    else x : uniaoR xz l

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ uniaoR a b