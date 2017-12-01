main = do
    palavra <- getLine
    putStrLn $ permuta palavra
    
permuta :: String -> String
permuta [a,b] = [b,a]
permuta (cabeca:corpo) = [head corpo] ++ [cabeca] ++ (permuta (tail corpo))
