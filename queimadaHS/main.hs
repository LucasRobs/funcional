
import Control.Monad (replicateM)

decompose xs pos =

setL xs pos value = take pos xs ++ [value] ++ drop (pos + 1) xs

set xxs l c value = inicio ++ [meio] ++ fim
  where
    inicio = take l xxs
    meio = setL (xxs !! l) c value
    fim = drop (l + 1) xxs

setTest :: IO ()
setTest = do
  let xs = [1, 2, 3, 4, 5]
  let ys = setL xs 2 10
  print ys

main :: IO ()
main = do
    [nl, nc] <-  map (read :: String -> Int) . words <$> getLine
    mat <- replicateM nl getLine
    mapM_ putStrLn mat 