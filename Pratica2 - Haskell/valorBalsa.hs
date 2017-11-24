main = do
  veiculo <- getLine
  qtdPessoas <- getLine
  
  let resposta = calculaPreco veiculo (read qtdPessoas)
  
  print resposta
  
calculaPreco :: String -> Double -> Double
calculaPreco veiculo qtdPessoas | (veiculo == "carro") = 5.0 + (qtdPessoas*1.5)
                                | (veiculo == "moto") = 2.0 + (qtdPessoas*1.5)
                                | (veiculo == "van") = 15.0 + (qtdPessoas*1.5)
                                | (veiculo == "onibus") = 50.0 + (qtdPessoas*1.5)
                                | (veiculo == "bicicleta") = (qtdPessoas*1.5)
                                | otherwise = 0.0
