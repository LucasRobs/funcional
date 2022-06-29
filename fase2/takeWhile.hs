 --[100, 50, 25, 12, 6, 3, 1]
 -- takeWhile (/= 0) $ iterate (\x -> div x 2) 100

 -- [1,-2,3,-4]
 -- [if (x > 0) then x else -x | x <- [1..]]


import Data.List

fn x = if x >= 0 then Just (mod x 10,div x 10) else Nothing

numeros x = reverse $ unfoldr fn x