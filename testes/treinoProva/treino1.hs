splitAt' xs pos = ( take pos xs, xs !! pos, drop (pos +1) xs )

swap array index1 index2 = inicio ++ [value2] ++ meio ++ [value1] ++ fim
  where (inicio, value1, resto) = splitAt' array index1
        (meio, value2, fim) = splitAt' resto (index2 - index1 - 1)