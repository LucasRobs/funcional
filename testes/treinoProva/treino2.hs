
fn ((antes, elem, depois), pos) x 
    | pos > 0 = ((antes ++ [x], elem, depois), pos - 1)
    | pos == 0 = ((antes , x, depois), pos - 1)
    | otherwise = ((antes, elem, depois  ++ [x]), pos - 1)

fn' x ((antes, elem, depois), pos)
    | pos < 0 = (([x] ++ antes, elem, depois), pos - 1)
    | pos == 0 = ((antes , x, depois), pos - 1)
    | otherwise = ((antes, elem, [x] ++ depois), pos - 1)


splitAtFoldL xs pos = foldl fn (([], 0, []), pos) xs
splitAtFoldR xs pos = foldr fn'  (([], 0, []), (length xs - pos - 1)) xs
