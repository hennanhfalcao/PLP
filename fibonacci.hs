--Função que gera a sequência de fibonacci
fibonacci :: [Integer]
fibonacci = 1 : 1 : zipWith (+) fibonacci (tail fibonacci)

--Funcao responsável por calcular a soma dos digitos de um número
somaDigitos :: Integer -> Integer
somaDigitos n = sum (map (\d -> read [d]) (show n))

-- Funcao que encontra o menor número de Fibonacci com soma de digitos igual a um valor especifico
encontraFibonacci :: Integer -> Integer
encontraFibonacci targetSum = head [x | x <- fibonacci, somaDigitos x == targetSum]

main :: IO ()
main = do
input <- getLine
let targetSum = read input :: Integer
let resultado = encontraFibonacci targetSum
putStrLn(show resultado)