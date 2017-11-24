main = do
    number <- getLine
    let answer = primoCasado (read number)
    print answer

findDividers :: Int -> [Int]
findDividers aux = [ num | num <- [1 .. aux], ((mod aux num) == 0)]

isPrime :: Int -> Bool
isPrime aux = if (findDividers aux) == [1,aux] then True else False

primoCasado :: Int -> String
primoCasado aux
    | isPrime(nextNumber) && isPrime(aux) = "PRIMO CASADO!"
    | isPrime(aux) = "PRIMO!"
    | otherwise = "NAO PRIMO!"
    where nextNumber = aux + 2
