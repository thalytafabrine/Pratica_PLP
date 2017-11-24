main = do
  num <- getLine
  let resposta = verify (read num)
  print resposta
  
verify :: Int -> Bool
verify num | ((sum (getDividers num)) == num) = True
           | otherwise = False
                         
getDividers :: Int -> [Int]
getDividers num = [x | x <- [1..num-1], mod num x == 0]
