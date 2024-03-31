regraDeTres :: Int -> Int -> Int -> Float
regraDeTres a b c = fromIntegral(b*c)/fromIntegral(a)

main :: IO ()
main = do

input1 <- getLine
let valor1 = read input1 :: Int

input2 <- getLine
let valor2 = read input2 :: Int

input3 <- getLine
let valor3 = read input3 :: Int

let resultado = regraDeTres valor1 valor2 valor3
putStrLn ("O valor de x é: " ++ show resultado)