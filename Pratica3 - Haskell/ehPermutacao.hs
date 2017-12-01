main = do
         s1 <- getLine
         s2 <- getLine
         let resposta = ehPermutacao s1 s2
         print resposta
    
ehPermutacao :: String -> String -> Bool
ehPermutacao [] [] = True
ehPermutacao s1 [] = False
ehPermutacao [] s2 = False
ehPermutacao s1 (head:tail) | ( head `elem` s1 ) =  ehPermutacao (remove [head] s1) tail
                            | otherwise = False

remove :: String -> String -> String
remove [] a = []
remove a [] = []
remove a (head:tail) | ([head] == a) = tail
                     | otherwise = [head] ++ (remove a tail)
